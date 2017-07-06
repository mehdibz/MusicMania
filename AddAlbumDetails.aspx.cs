using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class AddAlbumDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MusicConnectionString"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        btnAdd.Enabled = false;
    }
    public string IncreaseAlbumID()
    {
        string AlbumID = "";
        string query1 = "SELECT album_id FROM albums";
        SqlDataAdapter da = new SqlDataAdapter(query1, con);
        DataSet ds = new DataSet();
        da.Fill(ds, "albums");
        int ctr, len;
        string albumID, albumIDVal;
        DataRow dr;
        DataTable dt = ds.Tables["albums"];
        len = dt.Rows.Count - 1;
        dr = dt.Rows[len];
        albumID = Convert.ToString(dr["album_id"]);
        albumIDVal = albumID.Substring(1, 3);
        ctr = Convert.ToInt32(albumIDVal);
        if (ctr >= 1 && ctr < 9)
        {
            ctr++;
            AlbumID = "A00" + ctr;
        }
        else if (ctr >= 9 && ctr < 99)
        {
            ctr++;
            AlbumID = "A0" + ctr;
        }
        else if (ctr >= 99)
        {
            ctr++;
            AlbumID = "A" + ctr;
        }
        return AlbumID;
    }
    protected void btnAlbum_Click(object sender, EventArgs e)
    {
        try
        {
            string albumID;
            btnAdd.Enabled = true;
            btnAlbum.Enabled = false;
            albumID = IncreaseAlbumID();
            txtAlbumID.Text = albumID;
            txtAlbumID.Enabled = false;
            txtAlbumName.Enabled = true;
            txtAlbumPrice.Enabled = true;
            txtAlbumArtist.Enabled = true;
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        var dbMusic = new MusicDataContext();
        album a = new album();
        a.album_id = txtAlbumID.Text;
        a.album_name = txtAlbumName.Text;
        a.album_artist = txtAlbumArtist.Text;
        a.album_price = Convert.ToDouble(txtAlbumPrice.Text);
        dbMusic.albums.InsertOnSubmit(a);
        dbMusic.SubmitChanges();
        lblAlbumMessage.Text = "You have successfully added the details of a new album.";
        btnAdd.Enabled = false;
        btnAlbum.Enabled = true;
        txtAlbumID.Enabled = false;
        txtAlbumName.Enabled = false;
        txtAlbumArtist.Enabled = false;
        txtAlbumPrice.Enabled = false;
        txtAlbumID.Text = "";
        txtAlbumName.Text = "";
        txtAlbumArtist.Text = "";
        txtAlbumPrice.Text = "";
    }
}
