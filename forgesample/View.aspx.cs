using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace forgesample
{
    public partial class View : System.Web.UI.Page
    {
        private SqlConnection sqlConnection = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["bikeDB"].ConnectionString;

            sqlConnection = new SqlConnection(connectionString);

            sqlConnection.Open();

            switch (Request.QueryString["id"])
            {
                case "p0:48:0":

                    Repeater1.DataSourceID = "saddleSrc";

                    break;
                case "p0:83:0":

                    Repeater1.DataSourceID = "frameSrc";

                    break;
                case "p0:118:0":

                    Repeater1.DataSourceID = "tireSrc";

                    break;
                default:

                    Repeater1.Controls.Add(new Label() { Text = "Неверные параметры поиска!" });

                    break;
            }
        }
    }
}