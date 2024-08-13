using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics.Contracts;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace milagro
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetLista();
            }
        }
        SqlConnection conexion = new SqlConnection("Data Source=DESKTOP-SNFMITH;Initial Catalog=tutorial;User ID=Enmanuel;Password=123456;Encrypt=False");
        protected void Button1_Click(object sender, EventArgs e)
        {
            int empleadoId = int.Parse(TextBox1.Text);
            string empleadoName = TextBox2.Text,
            ciudad = DropDownList2.SelectedValue,
            sexo = RadioButtonList1.SelectedValue,
            contacto = TextBox8.Text;
            double edad = double.Parse(TextBox6.Text);
            DateTime fechaNacimiento = DateTime.Parse(TextBox7.Text);
            conexion.Open();
            SqlCommand comando = new SqlCommand("insert into Empleado values ('" + empleadoId + "','" + empleadoName + "','" + ciudad + "','" + edad + "','" + sexo + "' ,'" + fechaNacimiento + "','" + contacto + "')", conexion);
            comando.ExecuteNonQuery();
            conexion.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('registro exitoso');", true);
            GetLista();
        }

        void GetLista()
        {
            SqlCommand comando = new SqlCommand("select * from Empleado", conexion);
            SqlDataAdapter data = new SqlDataAdapter(comando);
            DataTable tabla = new DataTable();
            data.Fill(tabla);
            GridView1.DataSource = tabla;
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int empleadoId = int.Parse(TextBox1.Text);
            string empleadoName = TextBox2.Text,
            ciudad = DropDownList2.SelectedValue,
            sexo = RadioButtonList1.SelectedValue,
            contacto = TextBox8.Text;
            double edad = double.Parse(TextBox6.Text);
            DateTime fechaNacimiento = DateTime.Parse(TextBox7.Text);
            conexion.Open();
            SqlCommand comando = new SqlCommand("update Empleado set EmpleadoName = '" + empleadoName + "', Ciudad ='" + ciudad + "', Edad = '" + edad + "', Sexo = '" + sexo + "', FechaIngreso = '" + fechaNacimiento + "', Telefono = '" + contacto + "' where EmpleadoId = '"+empleadoId+"'", conexion);
            comando.ExecuteNonQuery();
            conexion.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('actualizado');", true);
            GetLista();

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int empleadoId = int.Parse(TextBox1.Text);
            conexion.Open();
            SqlCommand comando = new SqlCommand("delete Empleado  where EmpleadoId = '" + empleadoId + "'", conexion);
            comando.ExecuteNonQuery();
            conexion.Close();

            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Eliminado correctamente');", true);
            GetLista();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int empleadoId = int.Parse(TextBox1.Text);
            SqlCommand comando = new SqlCommand("select * from Empleado where EmpleadoId = '"+empleadoId+"'", conexion);
            SqlDataAdapter data = new SqlDataAdapter(comando);
            DataTable tabla = new DataTable();
            data.Fill(tabla);
            GridView1.DataSource = tabla;
            GridView1.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            GetLista();
        }
    }
}