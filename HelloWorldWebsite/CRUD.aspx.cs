using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EFDalLib;

public partial class CRUD : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        EFDal dal = new EFDal();
        gv.DataSource = dal.GetAllEmps();
        gv.DataBind();//refresh the contrl with new data
    }

    protected void btninsert_Click(object sender, EventArgs e)
    {
        EFDal dal = new EFDal();
        var record = new tbl_employee
        {
            Ecode = int.Parse(txtecode.Text),
            Ename = txtename.Text,
            salary = int.Parse(txtsalary.Text),
            deptid = int.Parse(txtdeptid.Text)
        };
        dal.AddEmployee(record);
        lblMsg.Text = "record inserted";
        gv.DataSource = dal.GetAllEmps();
        gv.DataBind();
    }

    protected void btndelete_Click(object sender, EventArgs e)
    {
        EFDal dal = new EFDal();

        var Ecode = int.Parse(txtecode.Text);
       
        dal.DeleteById(Ecode);
        lblMsg.Text = "record deleted";
        gv.DataSource = dal.GetAllEmps();
        gv.DataBind();
    }

    protected void btnupdate_Click(object sender, EventArgs e)
    {
        EFDal dal = new EFDal();
        var record = new tbl_employee
        {
            Ecode = int.Parse(txtecode.Text),
            salary = int.Parse(txtsalary.Text)
        };
        dal.UpdateEmp(record);
        lblMsg.Text = "record updated";
        gv.DataSource = dal.GetAllEmps();
        gv.DataBind();
    }

    protected void btnfind_Click(object sender, EventArgs e)
    {
        EFDal dal = new EFDal();
        var Ecode = int.Parse(txtecode.Text);
        var a=dal.GetEmpById(Ecode);
        txtename.Text = a.Ename.ToString();
        txtsalary.Text = a.salary.ToString();
        txtdeptid.Text = a.deptid.ToString();
        lblMsg.Text = "record displayed";
        gv.DataSource = dal.GetAllEmps();
        gv.DataBind();
    }
}