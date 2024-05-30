﻿namespace WinForm_ContactApp
{
    partial class Register
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.txtUID = new MaterialSkin.Controls.MaterialTextBox();
            this.txtPass = new MaterialSkin.Controls.MaterialTextBox();
            this.lbl = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.btnRegister = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // txtUID
            // 
            this.txtUID.AnimateReadOnly = false;
            this.txtUID.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.txtUID.Depth = 0;
            this.txtUID.Font = new System.Drawing.Font("Roboto", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.txtUID.LeadingIcon = null;
            this.txtUID.Location = new System.Drawing.Point(361, 174);
            this.txtUID.MaxLength = 50;
            this.txtUID.MouseState = MaterialSkin.MouseState.OUT;
            this.txtUID.Multiline = false;
            this.txtUID.Name = "txtUID";
            this.txtUID.Size = new System.Drawing.Size(609, 50);
            this.txtUID.TabIndex = 3;
            this.txtUID.Text = "";
            this.txtUID.TrailingIcon = null;
            // 
            // txtPass
            // 
            this.txtPass.AnimateReadOnly = false;
            this.txtPass.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.txtPass.Depth = 0;
            this.txtPass.Font = new System.Drawing.Font("Roboto", 16F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Pixel);
            this.txtPass.LeadingIcon = null;
            this.txtPass.Location = new System.Drawing.Point(361, 250);
            this.txtPass.MaxLength = 50;
            this.txtPass.MouseState = MaterialSkin.MouseState.OUT;
            this.txtPass.Multiline = false;
            this.txtPass.Name = "txtPass";
            this.txtPass.Size = new System.Drawing.Size(609, 50);
            this.txtPass.TabIndex = 4;
            this.txtPass.Text = "";
            this.txtPass.TrailingIcon = null;
            // 
            // lbl
            // 
            this.lbl.AutoSize = true;
            this.lbl.BackColor = System.Drawing.Color.Transparent;
            this.lbl.Font = new System.Drawing.Font("Monotype Corsiva", 22F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl.Location = new System.Drawing.Point(377, 49);
            this.lbl.Name = "lbl";
            this.lbl.Size = new System.Drawing.Size(294, 45);
            this.lbl.TabIndex = 6;
            this.lbl.Text = "Create Your Account";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(216, 194);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(60, 25);
            this.label1.TabIndex = 7;
            this.label1.Text = "Email";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(216, 275);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(98, 25);
            this.label2.TabIndex = 8;
            this.label2.Text = "Password";
            // 
            // btnRegister
            // 
            this.btnRegister.BackColor = System.Drawing.Color.LightGoldenrodYellow;
            this.btnRegister.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnRegister.Location = new System.Drawing.Point(430, 416);
            this.btnRegister.Name = "btnRegister";
            this.btnRegister.Padding = new System.Windows.Forms.Padding(2);
            this.btnRegister.Size = new System.Drawing.Size(253, 40);
            this.btnRegister.TabIndex = 9;
            this.btnRegister.Text = "Register";
            this.btnRegister.UseVisualStyleBackColor = false;
            this.btnRegister.Click += new System.EventHandler(this.btnRegister_Click);
            // 
            // Register
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.Honeydew;
            this.ClientSize = new System.Drawing.Size(1137, 570);
            this.Controls.Add(this.btnRegister);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.lbl);
            this.Controls.Add(this.txtPass);
            this.Controls.Add(this.txtUID);
            this.MaximizeBox = false;
            this.Name = "Register";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Register New User";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private MaterialSkin.Controls.MaterialTextBox txtUID;
        private MaterialSkin.Controls.MaterialTextBox txtPass;
        private System.Windows.Forms.Label lbl;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnRegister;
    }
}

