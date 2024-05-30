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
    public partial class AddContact : Form
    {
        string user;
        public AddContact(string realuser)
        {
            InitializeComponent();
            this.lblUser = new System.Windows.Forms.Label();
            // Set properties of lblUser (location, size, etc.)
            user = realuser;
            lblUser.Text = user;
            getData();
        }

        public void getData()
        {
            DataTable dt = DBMaster.Get_DT("select * from tbl_contact where uid='" + lblUser.Text.Trim() + "'");
            this.grdContacts.DataSource = dt;
        }

        private void btnAddContact_Click(object sender, EventArgs e)
        {
            try
            {
                string s = "insert into tbl_contact (uid,name,phone1,phone2,email,address) values ('" + lblUser.Text.Trim() + "','" + txtName.Text.Trim() + "','" + txtMob1.Text.Trim() + "','" + txtMob2.Text.Trim() + "','" + txtEmail.Text.Trim() + "','" + txtAddress.Text.Trim() + "')";
                int a = DBMaster.Commd_func(s);

                if (a > 0)
                {
                    MessageBox.Show("New Contact Added");
                    txtAddress.Text = "";
                    txtEmail.Text = "";
                    txtMob1.Text = "";
                    txtMob2.Text = "";
                    txtName.Text = "";
                    getData();
                }
                else
                {
                    MessageBox.Show("Failed To Add");
                }
            }
            catch (Exception ee)
            {
                MessageBox.Show("System Error : " + ee.Message);
            }
            


        }

        private void grdContacts_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0) // Ensure the click is on a row, not the column header
            {
                DataGridViewRow selectedRow = this.grdContacts.Rows[e.RowIndex];
                EditContact editForm = new EditContact(selectedRow);

                // Subscribe to the DataUpdated event
                editForm.DataUpdated += (s, args) => {
                    getData();
                    this.Refresh();
                };

                if (editForm.ShowDialog() == DialogResult.OK)
                {
                    // Optionally refresh the grid or take other actions if not already handled by the event
                    getData();
                    this.Refresh();
                }
            }
        }

        public void btnLoadData_Click(object sender, EventArgs e)
        {
            getData();
        }
    }
}
