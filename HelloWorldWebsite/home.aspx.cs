using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_PreInit(object sender,EventArgs e)
    {

    }
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(Page.IsValid)
        lblMsg.Text = "data submitted";
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        string v = args.Value;
        if(v=="welcome")
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
            CustomValidator1.ErrorMessage = "data already present";
            CustomValidator1.SetFocusOnError = true;
        }
    }
}