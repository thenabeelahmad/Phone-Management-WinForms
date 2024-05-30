using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WinForm_ContactApp
{
    public partial class EditContact : Form
    {
        public event EventHandler DataUpdated;
        private DataGridViewRow _rowData;

        private void OnDataUpdated()
        {
            if (DataUpdated != null)
            {
                DataUpdated(this, EventArgs.Empty);
            }
        }
        public EditContact(DataGridViewRow rowData)
        {
            InitializeComponent();
            _rowData = rowData;
            LoadRowData();
        }

        private void LoadRowData()
        {
            // Assume your DataGridView has columns "Column1", "Column2", etc.
            txtName.Text = _rowData.Cells["name"].Value.ToString();
            txtEmail.Text = _rowData.Cells["email"].Value.ToString();
            txtMob1.Text = _rowData.Cells["phone1"].Value.ToString();
            txtMob2.Text = _rowData.Cells["phone2"].Value.ToString();
            txtAddress.Text = _rowData.Cells["address"].Value.ToString();

            string sno = _rowData.Cells["sno"].Value.ToString();

        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            string s = "delete tbl_contact where sno='"+ _rowData.Cells["sno"].Value.ToString() + "'";
            int a = DBMaster.Commd_func(s);
            if (a>0)
            {
                AddContact frm = new AddContact(txtName.Text.Trim());
                frm.Refresh();
                MessageBox.Show("Deleted Contact");
                this.Hide();
                OnDataUpdated();
                this.DialogResult = DialogResult.OK;
                this.Close();
            }
            else
            {
                MessageBox.Show("Failed To Delete Contact");
            }

        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            string s = "update tbl_contact set name='"+txtName.Text.Trim()+"',phone1='"+txtMob1.Text.Trim()+"',phone2='"+txtMob2.Text.Trim()+"',email='"+txtEmail.Text.Trim()+"',address='"+txtAddress.Text.Trim()+"' where sno='" + _rowData.Cells["sno"].Value.ToString() + "'";
            int a = DBMaster.Commd_func(s);
            if (a > 0)
            {
                MessageBox.Show("Updated Contact");
                this.Close();
                OnDataUpdated();
                this.DialogResult = DialogResult.OK;
                this.Close();
            }
            else
            {
                MessageBox.Show("Failed To Update Contact");
            }
        }
    }
}
