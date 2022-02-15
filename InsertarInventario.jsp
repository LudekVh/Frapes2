<%@ page import = "java.io.*,java.sql.*"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel='stylesheet' href='css/bootstrap.min.css.css'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insertar Inventario</title>
</head>
<body>
    <%Connection con = null;
     try{
         Class.forName("com.mysql.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost/Frapes?characterEncoding=latin1&useConfigs=maxPerformance","root","Jair2002");
         //con = DriverManager.getConnection("jdbc:mysql://localhost/ejemplo", "root", "mysql123");
         if(con!=null){
            Statement stmt = con.createStatement();
            int id= Integer.parseInt(request.getParameter("id"));
            int idProducto= Integer.parseInt(request.getParameter("idProducto"));
            int cantidad= Integer.parseInt(request.getParameter("cantidad"));
            int x = stmt.executeUpdate("INSERT INTO inventario VALUES("+id+","+"'"+idProducto+"'"+","+"'"+cantidad+"'"+")");

         if(x>0){
               out.println("<h1> Inventario insertado</h1>");
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
    <a href="MostrarInventario.jsp"><input type='submit' class='btn btn-outline-primary'  name='mostrar'value='Mostrar Inventario'></a>


    
</body>
</html>