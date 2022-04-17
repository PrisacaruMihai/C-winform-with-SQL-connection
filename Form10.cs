using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Xml;

namespace STIDNR._1_2
{
    public partial class Form10 : Form
    {
        public Form10()
        {
            InitializeComponent();
        }
        private XmlDocument d = null;
        private XmlNodeList elevi = null;
        private void button2_Click(object sender, EventArgs e)
        {
            
               d = new XmlDocument();
            d.Load("Elevi.xml"); 
            elevi = d.SelectNodes( "intership/elev" ) ;

            for (int i = 0; i < elevi.Count; i++)
            {
                XmlNode elev = elevi.Item(i).SelectSingleNode("nume");
                listBox1.Items.Add(elev.InnerText);  
            }
        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int index = listBox1.SelectedIndex;
            elevi = d.SelectNodes ("intership/elev");
            XmlNode Id = elevi.Item(index).SelectSingleNode("Id");
            textBox1.Text = Id.InnerText;
            XmlNode gen = elevi.Item(index).SelectSingleNode("gen") ;
            textBox2.Text = gen.InnerText;
            XmlNode nume =elevi.Item(index).SelectSingleNode("nume") ;
            textBox3.Text = nume.InnerText;
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }
    }
}
