using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RepeaterDemo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected double GetBonus(object data)
    {
        int salary = (int)data;
        double bonus = 0;
        if (salary>5000)
        {
            bonus = 0.1 * salary;

        }
        else
        {
            bonus = 0.2 * salary;
        }
        return bonus;
    }
}