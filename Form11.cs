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
    public partial class Form11 : Form
    {
        SqlConnection conectare = new SqlConnection("Data Source=DESKTOP-96D0I02 ;Initial Catalog =Endava; Integrated Security=True;");
        SqlCommand cmd;
        SqlDataAdapter adapt;
        int ID = 0;
        public Form11()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            conectare.Open();
            SqlDataAdapter sqlAdap = new SqlDataAdapter("Select * From EleviIntership",conectare);
            DataTable dt1 = new DataTable();
            sqlAdap.Fill(dt1);
            conectare.Close();
            dataGridView1.DataSource = dt1;
        }

        private void Form11_Load(object sender, EventArgs e)
        {
            StyleDataGridView();
        }
        void StyleDataGridView()
        {
            dataGridView1.BorderStyle = BorderStyle.None;
            dataGridView1.AlternatingRowsDefaultCellStyle.BackColor = Color.White;
            dataGridView1.CellBorderStyle = DataGridViewCellBorderStyle.SingleHorizontal;
            dataGridView1.DefaultCellStyle.SelectionForeColor = Color.Red;
            dataGridView1.BackgroundColor = Color.Blue;
            dataGridView1.RowHeadersWidthSizeMode = DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            dataGridView1.EnableHeadersVisualStyles = false;
            dataGridView1.ColumnHeadersBorderStyle = DataGridViewHeaderBorderStyle.None;
            dataGridView1.ColumnHeadersDefaultCellStyle.Font = new Font("MS Reference San Serif", 10);
            dataGridView1.ColumnHeadersDefaultCellStyle.BackColor = Color.Blue;
            dataGridView1.ColumnHeadersDefaultCellStyle.ForeColor = Color.White;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            conectare.Open();
            SqlDataAdapter sda = new SqlDataAdapter("insert into EleviIntership(IdElevi,NumeElevi,PrenumeElev,GenElev,TelefonElev,DataNastereElev) values('" + textBox1.Text + "', '" + textBox2.Text + "','" + textBox3.Text + "','" + comboBox1.Text + "','" + textBox4.Text + "','" + textBox5.Text + "')", conectare);
            sda.SelectCommand.ExecuteNonQuery();
            conectare.Close();
            MessageBox.Show("datele sau salvat");
            DisplayData();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (!(textBox1.Text == string.Empty))
            {
                string query = "Delete from EleviIntership where IdElevi= '" + textBox1.Text + "'";
                SqlCommand cmd = new SqlCommand(query, conectare);
                SqlDataReader myreader;
                try
                {
                    conectare.Open();
                    myreader = cmd.ExecuteReader();
                    MessageBox.Show("successfully data Deleted", "user information");
                    
                    while (myreader.Read())
                    {
                    }
                    conectare.Close();
                    DisplayData();
                }
                catch (Exception ec)
                {
                    MessageBox.Show(ec.Message);
                }
            }
            else
            {
                MessageBox.Show("enter ID which you want to delete", "User information");
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            
        }
        private void DisplayData()
        {
            conectare.Open();
            DataTable dt = new DataTable();
            adapt = new SqlDataAdapter("select * from EleviIntership", conectare);
            adapt.Fill(dt);
            dataGridView1.DataSource = dt;
            conectare.Close();
        }

    }
}
