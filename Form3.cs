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
    public partial class Form3 : Form
    {
        SqlConnection cn = new SqlConnection(@"Data Source=DESKTOP-96D0I02;Initial Catalog=EndavaDB;Integrated Security=True;");

        public Form3()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

       

        private void Form3_Load(object sender, EventArgs e)
        {
            
            
        }
        private void button1_Click(object sender, EventArgs e)
        {

            cn.Open();
            SqlDataAdapter sda = new SqlDataAdapter("insert into Login(username,password) values('" + textBox1.Text + "', '" + textBox2.Text, cn);
            sda.SelectCommand.ExecuteNonQuery();
            cn.Close();
            MessageBox.Show("datele sau salvat");
            Form2 f2 = new Form2();
            f2.ShowDialog();
            this.Close();
        }
        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
