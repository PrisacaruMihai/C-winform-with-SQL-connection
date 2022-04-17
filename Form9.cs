using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace STIDNR._1_2
{
    public partial class Form9 : Form
    {
        public Form9()
        {
            InitializeComponent();
        }

        private void label14_Click(object sender, EventArgs e)
        {

        }


        private void AndroidMaterials(object sender, LinkLabelLinkClickedEventArgs e)
        {
            System.Diagnostics.Process.Start( "https://www.endava.com/-/media/EndavaDigital/Careers/Files/InternshipProgrammeMDD/InternshipSpring_2022/SM_Android_Development.ashx?la=en&hash=5CE71083CBE46F7C07005526C09A2ACC1C384183");
        }

        private void JavaMaterials(object sender, LinkLabelLinkClickedEventArgs e)
        {
            System.Diagnostics.Process.Start( "https://www.endava.com/-/media/EndavaDigital/Careers/Files/InternshipProgrammeMDD/InternshipSpring_2022/SM_Java_Development.ashx?la=en&hash=0B167DE658EA1854D457283C1CC2611B43D8A6EC");
        }

        private void NetMaterials(object sender, LinkLabelLinkClickedEventArgs e)
        {
            System.Diagnostics.Process.Start( "https://www.endava.com/-/media/EndavaDigital/Careers/Files/InternshipProgrammeMDD/InternshipSpring_2022/SM_DotNet_Development.ashx?la=en&hash=FCCF710B67BD4CB8941D50D5A8A115B586EB2B26");
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
