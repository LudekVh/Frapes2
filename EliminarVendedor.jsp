<%@ page import = "java.io.*,java.sql.*"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel='stylesheet' href='css/bootstrap.min.css.css'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Borrar Vendedor</title>
</head>
<body>
    <%Connection con = null;
    try{
         Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost/Frapes?characterEncoding=latin1&useConfigs=maxPerformance","root","Jair2002");
         //con = DriverManager.getConnection("jdbc:mysql://localhost/ejemplo", "root", "mysql123");
         if(con!=null){
         Statement stmt = con.createStatement();
         int id = Integer.parseInt(request.getParameter("id"));
        int x= stmt.executeUpdate("DELETE FROM vendedor WHERE id='"+id+"'");
         if(x>0){
               out.println("<h1> Vendedor Eliminado</h1>");
             }
        }//fin del if
        }//fin del try
        catch(SQLException e){
         out.println(e);
         }
        /* catch(ClassNotFoundException e){
             out.println(e);
        }*/
    %>
    <a href="MostrarVendedor.jsp"><input type='submit' class='btn btn-outline-primary'  name='mostrar'value='Mostrar Vendedor'></a>
    <a href="InsertarVendedor.html"><input type='submit' class='btn btn-outline-success'  name='insertar cliente'value='Insertar Vendedor'>


    
</body>
</html>