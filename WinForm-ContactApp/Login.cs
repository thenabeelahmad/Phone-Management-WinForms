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
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {

            try
            {
                string s = "select * from UserMaster where username = '" + txtUID.Text.Trim() + "'";

                DataTable dt = DBMaster.Get_DT(s);
                if (dt.Rows.Count > 0)
                {
                    if (dt.Rows[0]["password_hash"].ToString().Trim().Equals(txtPass.Text.Trim()))
                    {
                        MessageBox.Show("Welcome  " + txtUID.Text.Trim() + "  To Contacts App");
                        this.Hide();
                        AddContact frm = new AddContact(txtUID.Text.Trim());
                        frm.Show();

                    }
                    else
                    {
                        MessageBox.Show("Incorrect Password");
                    }
                }
                else
                {
                    MessageBox.Show("User Not Found");
                    this.Hide();
                    Register frm = new Register();
                    frm.Show();
                }
            }
            catch (Exception ee)
            {
                MessageBox.Show("System Error :" + ee.Message);
            }
            
        }

        private void btnRegister_Click(object sender, EventArgs e)
        {
            this.Hide();
            Register frm = new Register();
            frm.Show();
        }
    }
}
