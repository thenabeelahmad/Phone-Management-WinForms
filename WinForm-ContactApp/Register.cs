using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MaterialSkin;
using MaterialSkin.Controls;
using MaterialSkin.Properties;

namespace WinForm_ContactApp
{
    public partial class Register : Form
    {
        public Register()
        {
            InitializeComponent();
        }

        private void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                string s = "select * from UserMaster where username='" + txtUID.Text.Trim() + "'";

                DataTable dt = DBMaster.Get_DT(s);

                if (dt.Rows.Count > 0)
                {
                    MessageBox.Show("User Already Exists");
                }
                else
                {
                    string inQ = "insert into UserMaster (username,password_hash,email) values ('" + txtUID.Text.Trim() + "','" + txtPass.Text.Trim() + "','" + txtUID.Text.Trim() + "')";
                    int a = DBMaster.Commd_func(inQ);
                    if (a > 0)
                    {
                        MessageBox.Show("User Added Successfully");
                        this.Show();
                        Login frm = new Login();
                        frm.Show();
                    }
                    else
                    {
                        MessageBox.Show("Failed To Add New User");
                    }
                }
            }
            catch (Exception ee)
            {
                MessageBox.Show("System Failure :" + ee.Message);
            }
            
        }
    }
}
