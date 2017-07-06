using System;
using System.Data;
using System.Data.SqlClient;
using MusicTableAdapters;
using System.Configuration;
using localhost;

public partial class AddReviews : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MusicConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        lblHeading.Text = "Add Reviews for " + Request.QueryString["name"];
    }
    protected void btnSubmitReview_Click(object sender, EventArgs e)
    {
        string Return = IncreaseReviewID();
        string query = "INSERT INTO reviews (review_id, album_name, album_review) VALUES ('" + Return + "', '" + Request.QueryString["name"] + "', '" + txtAddReview.Text + "')";
        SqlCommand comm = new SqlCommand(query, con);
        con.Open();
        comm.ExecuteNonQuery();
        lblMessage.Text = "Reviews given by you are submitted.";
        string an = Request.QueryString["name"];
        AlbumReviews ar = new AlbumReviews();
        gvReviews.DataSource = ar.GetResult(an);
        gvReviews.DataBind();
    }
    private string IncreaseReviewID()
    {
        string Review_ID = "";
        string query1 = "SELECT review_id FROM reviews";
        SqlDataAdapter da1 = new SqlDataAdapter(query1, con);
        DataSet ds1 = new DataSet();
        da1.Fill(ds1, "reviews");
        int ctr, len;
        string reviewID, reviewIDVal;
        DataTable dt = new DataTable();
        DataRow dr;
        dt = ds1.Tables["reviews"];
        len = dt.Rows.Count - 1;
        dr = dt.Rows[len];
        reviewID = Convert.ToString(dr["review_id"]);
        reviewIDVal = reviewID.Substring(1, 3);
        ctr = Convert.ToInt32(reviewIDVal);
        if (ctr >= 1 && ctr < 9)
        {
            ctr++;
            Review_ID = "R00" + ctr;
        }
        else if (ctr >= 9 & ctr < 99)
        {
            ctr++;
            Review_ID = "R0" + ctr;
        }
        else if (ctr >= 99)
        {
            ctr++;
            Review_ID = "R" + ctr;
        }
        return Review_ID;
    }
}
