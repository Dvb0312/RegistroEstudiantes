using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;

namespace RegistroEstudiantes
{
    public partial class _Default : System.Web.UI.Page
    {
        private static List<Estudiante> estudiantes = new List<Estudiante>();
        private static int idCounter = 1; 

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarEstudiantes();
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text.Trim();
            string correo = txtCorreo.Text.Trim();
            string curso = txtCurso.Text.Trim();

            
            if (!string.IsNullOrEmpty(nombre) && !string.IsNullOrEmpty(correo) && !string.IsNullOrEmpty(curso))
            {
                
                estudiantes.Add(new Estudiante(idCounter++, nombre, correo, curso));

                txtNombre.Text = "";
                txtCorreo.Text = "";
                txtCurso.Text = "";

                CargarEstudiantes();
            }
        }

    
        private void CargarEstudiantes()
        {
            gvEstudiantes.DataSource = estudiantes;
            gvEstudiantes.DataBind();
        }

        protected void gvEstudiantes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
           
                int idEliminar = Convert.ToInt32(e.CommandArgument);
                var estudiante = estudiantes.Find(est => est.ID == idEliminar);
                if (estudiante != null)
                {
                    estudiantes.Remove(estudiante);
                    CargarEstudiantes();
                }
            }
        }
    }
}
