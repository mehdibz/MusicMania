using System;
using System.Collections;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Albums : System.Web.UI.Page
{
    ArrayList arrLstItems = new ArrayList();
    string selected;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MusicConnectionString"].ConnectionString);

    private void AddItemsInSession()
    {
        for (int i = 0; i < lbSelectedAlbums.Items.Count; i++)
        {
            string strItem = lbSelectedAlbums.Items[i].Text;
            arrLstItems.Add(strItem);
        }
        Session["arrLstItems"] = arrLstItems;
    }

    private bool ChckItemExist()
    {
        string strSelectedItem = ddAlbum.SelectedItem.Value;
        bool blRetVal = false;
        for (int i = 0; i < lbSelectedAlbums.Items.Count; i++)
        {
            string strLstItem = lbSelectedAlbums.Items[i].Text;
            if (string.Compare(strSelectedItem, strLstItem, false) == 0)
                blRetVal = true;
        }
        return blRetVal;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["arrLstItems"] != null)
        {
            lbSelectedAlbums.DataSource = (ArrayList)Session["arrLstItems"];
            lbSelectedAlbums.DataBind();
        }
        else
            lbSelectedAlbums.Visible = false;
        if (!IsPostBack)
        {
            string query = "SELECT album_name FROM albums";
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            con.Open();
            da.Fill(ds, "names");
            ddAlbum.DataSource = ds;
            ddAlbum.DataTextField = "album_name";
            ddAlbum.DataBind();
            con.Close();
        }
    }

    protected void ddAlbum_SelectedIndexChanged(object sender, EventArgs e)
    {
        lbAlreadySelected.Text = "";
        string query = "Select album_id AS 'Album ID', album_name AS 'Album Name', album_artist AS 'Album Artist', album_price AS 'Album Price' FROM albums WHERE album_name='" + ddAlbum.SelectedItem.Value + "'";
        SqlDataAdapter da = new SqlDataAdapter(query, con);
        DataSet ds = new DataSet();
        con.Open();
        da.Fill(ds, "albums");
        gvAlbumDetails.DataSource = ds.Tables["albums"];
        gvAlbumDetails.DataBind();
        string query2 = "SELECT album_review AS 'Album Review' FROM reviews WHERE album_name = '" + ddAlbum.SelectedItem.Value + "'";
        SqlDataAdapter da2 = new SqlDataAdapter(query2, con);
        DataSet ds2 = new DataSet();
        da2.Fill(ds2, "reviews");
        gvViewDetails.DataSource = ds2.Tables["reviews"];
        gvViewDetails.DataBind();
        con.Close();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        lbAlreadySelected.Text = "";
        lbSelectedAlbums.Visible = true;
        selected = ddAlbum.SelectedItem.Value;
        if (!selected.Equals("Select Album"))
        {
            if (!ChckItemExist())
                lbSelectedAlbums.Items.Add(selected);
            else
                lbAlreadySelected.Text = "You have already selected this album.";
        }
        AddItemsInSession();
    }
    protected void btnAddReview_Click(object sender, EventArgs e)
    {
        if (ddAlbum.SelectedValue != null && ddAlbum.SelectedValue != "Select Album")
            Response.Redirect("AddReviews.aspx?name=" + System.Web.HttpUtility.UrlEncode(ddAlbum.SelectedValue));
    }
}
