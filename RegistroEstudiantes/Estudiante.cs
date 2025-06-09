public class Estudiante
{
    public int ID { get; set; }
    public string Nombre { get; set; }
    public string CorreoElectronico { get; set; }
    public string Curso { get; set; }

    public Estudiante(int id, string nombre, string correoElectronico, string curso)
    {
        ID = id;
        Nombre = nombre;
        CorreoElectronico = correoElectronico;
        Curso = curso;
    }
}
