using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.IO.Ports;
using System.Threading;
namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }


        SerialCOM serial;
        bool portready=false;
        string sendcmd;
        private void Form1_Load(object sender, EventArgs e)
        {
            serial = new SerialCOM();
            serial.sp = serialPort1;
            string[] portnames;
            int[] Baudrate = { 9600, 115200 };
            portnames = SerialPort.GetPortNames();
            foreach (string port in portnames)
            {
                comboBox1.Items.Add(port);
                
            }
            foreach (int baud in Baudrate)
            {
                comboBox2.Items.Add(baud);
            }
            serialPort1.DataReceived += new SerialDataReceivedEventHandler(serialPort1_DataReceived);
            comboBox1.Text = portnames[0];

        }

        private void serialPort1_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            string convResult;
            convResult = serial.ReadText();
            serial.SetTxtBox(textBox1, convResult);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            timer1.Enabled = true;
            string channel = comboBox3.Text;
            int temp = Convert.ToInt32(channel);
            //-------------- A part ------------//
            if (temp < 11)
 
            {
                if (temp < 10)
                {
                    sendcmd = "A" + "0" + channel;
                }
                else 
                {
                    sendcmd = "A"  + channel;
                } 

            }
            //------------ B part ------------//
            else if (temp >= 11 && temp < 22)
            {
                temp = temp - 11;
                channel = temp.ToString();
                if (temp < 10)
                {
                    sendcmd = "B" + "0" + channel;
                }
                else
                {
                    sendcmd = "B" + channel;
                } 
            }
            else { sendcmd = " "; }

            serial.SendText(sendcmd);
            
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string port = comboBox1.Text;
            int baud = Convert.ToInt16(comboBox2.Text);
            try
            {
                if (portready)
                {
                    serial.Disconnect();
                    portready = false;
                    button1.Text = "Connect";
                }
                else
                {
                    serial.Connect(port, baud);
                    portready = true;
                    button1.Text = "Disconnect";
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            timer1.Enabled = false;
        }
        

        private void timer1_Tick(object sender, EventArgs e)
        {
            serial.SendText(sendcmd);

        }              
    }
}

public class SerialCOM
{
    public SerialPort sp;
    public void Connect(string port, int baud) 
        {
            if (!sp.IsOpen) 
            {
                sp.PortName = port;
                sp.BaudRate = baud;
                sp.Open();
            }       
        }

    public void Disconnect()
    {
        if (sp.IsOpen)
        {
            sp.Close();
        }
    }

    public void SendText(string text) 
    {
        sp.Write(text);
    }

    public string ReadText() 
    {
        if (sp.BytesToRead > 0)
        {
            string text;
            text = sp.ReadLine();
            return text;

        }
        else 
        {
            return "no data";
        }
    }

    public int ReadByte()
    {
        if (sp.BytesToRead > 0)
        {
        int num;
        num = sp.ReadByte();
        return num;
        }
        else
        {
            return 0;
        }
    }


    public void SetButTxt(Button Button, string data) ///edit Text of button in DataReceived event handler
    {

        Button.Invoke(new Action(() =>
        {
            Button.Text = data;

        }));
    }

    public void SetTxtBox(TextBox txt, string data) ///edit Text of button in DataReceived event handler
    {

        txt.Invoke(new Action(() =>
        {
            txt.Text = data;

        }));
    }


    public void SetLabTxt(Label Label, string data) ///edit Text of label in DataReceived event handler
    {

        Label.Invoke(new Action(() =>
        {
            Label.Text = data;

        }));
    }


   public void SetPicture(PictureBox PB, bool status) ///setting visibility of PB in DataReceived event handler
    {
        PB.Invoke(new Action(() =>
            {
                PB.Visible = status;

            }));
    }
}
