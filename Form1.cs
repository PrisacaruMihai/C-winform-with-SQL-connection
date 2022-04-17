using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace STIDNR._1_2
{
    public partial class Form1 : Form
    {
        
        public Form1()
        {
            InitializeComponent();
            sub_about();
        }

        private void aboutToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void closeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            const string message = "Esti sigur ca vrei sa inchizi aplicatia?";
            const string caption = "Anulare inchidere!";
            var result = MessageBox.Show(message, caption,
                                         MessageBoxButtons.YesNo,
                                         MessageBoxIcon.Question);

            if (result == DialogResult.Yes) {
                Environment.Exit(0);
            }
            else
            {
                MessageBox.Show(caption);
            }
                
            
        }

        private void maximaixToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Maximized;
        }

        private void minimaizToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void romanaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Sorry not working now(");
        }

        private void detushToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Sorry not working now(");
        }

        private void englishToolStripMenuItem_Click(object sender, EventArgs e)
        {
            MessageBox.Show("By default language!");
        }

        private void intershipToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void diagramERToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button4_Click(object sender, EventArgs e)
        {
            openChildForm(new Form6());
        }

        private void button2_Click(object sender, EventArgs e)
        {
            openChildForm(new Form4());
        }
        private void sub_about()
        {
            SubAbout.Visible = false;
            SubIntership.Visible = false;
            SubDatabase.Visible = false;
            SubTabele.Visible = false;
        }
        private void HideSubPanel()
        {
            if (SubAbout.Visible == true)
                SubAbout.Visible = false;
            if (SubIntership.Visible == true)
                SubIntership.Visible = false;
            if (SubDatabase.Visible == true)
               SubDatabase.Visible = false;
            if (SubTabele.Visible == true)
                SubTabele.Visible = false;
        }
        private void ShowSubPanel(Panel Panels)
        {
            if(Panels.Visible == false)
            {
                HideSubPanel();
                Panels.Visible = true;
            }
            else
            {
                Panels.Visible = false;
            }
        }

        private void About_Click(object sender, EventArgs e)
        {
            ShowSubPanel(SubAbout);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            ShowSubPanel(SubIntership);
        }

        private void button9_Click(object sender, EventArgs e)
        {
            openChildForm(new Form9());
        }

        private void button6_Click(object sender, EventArgs e)
        {
            ShowSubPanel(SubDatabase);
        }

        private void panel1_Paint_1(object sender, PaintEventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            openChildForm(new Form5());
        }

        private void button5_Click(object sender, EventArgs e)
        {
            openChildForm(new Form7());
        }
        public Form activeForm = null;
        private void openChildForm(Form childForm)
        {
            if (activeForm != null)
                activeForm.Close();
            activeForm = childForm;
            childForm.TopLevel =  false;
            childForm.FormBorderStyle = FormBorderStyle.None;
            childForm.Dock = DockStyle.Fill;
            PanelWelcome.Controls.Add(childForm);
            PanelWelcome.Tag = childForm;
            childForm.BringToFront();
            childForm.Show();

        }

        private void button10_Click(object sender, EventArgs e)
        {
            openChildForm(new Form8());
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void button8_Click(object sender, EventArgs e)
        {
            openChildForm(new Form10());
        }

        private void minimaziToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void restoreDownToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Normal;
        }

        private void languagesToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void menuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void button11_Click(object sender, EventArgs e)
        {
            openChildForm(new Form13());
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            ShowSubPanel(SubTabele);
        }

        private void button6_Click_1(object sender, EventArgs e)
        {
            openChildForm(new Form11());
        }

        private void button7_Click(object sender, EventArgs e)
        {
            openChildForm(new Form12());
        }

        private void button12_Click(object sender, EventArgs e)
        {
            openChildForm(new Form14());
        }

        private void button13_Click(object sender, EventArgs e)
        {
            openChildForm(new Form15());
        }

        private void button14_Click(object sender, EventArgs e)
        {
            openChildForm(new Form16());
        }

        private void button15_Click(object sender, EventArgs e)
        {
            openChildForm(new Form17());
        }

        private void button16_Click(object sender, EventArgs e)
        {
            openChildForm(new Form18());
        }
    }
}
