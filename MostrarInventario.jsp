<%@ page import = "java.io.*,java.sql.*"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel='stylesheet' href='css/bootstrap.min.css.css'>
    <title>Crud Inventario</title>
</head>
<center>
<body>
    <h1>Inventario</h1>
    <%Connection con = null;
    try{
         Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost/Frapes?characterEncoding=latin1&useConfigs=maxPerformance","root","Jair2002");
         //con = DriverManager.getConnection("jdbc:mysql://localhost/ejemplo", "root", "mysql123");
         if(con!=null){
         Statement stmt = con.createStatement();
         ResultSet res = stmt.executeQuery("SELECT * FROM inventario");


     %>
     <table>
        <tr>
            <table style='margin: auto; width: 700px; border-collapse: separate; border-spacing: 40px 5px;'>
            <th>ID</th>
            <th>ID PRODUCTO</th>
            <th>ID CANTIDAD</th>
        
        </tr>
        <%while(res.next()){
            int id = res.getInt("id");
            int idProducto = res.getInt("idProducto");
            int cantidad = res.getInt("cantidad");


         %>
         <tr>
            <td><%=id%></td>
            <td><%=idProducto%></td>
            <td><%=cantidad%></td>
            <td><a href="ActualizarInventario.html?id="+id+><input type='submit' class='btn btn-outline-success'  name='actualizar'value='Actualizar Inventario'></a></td>
            <td><a href="EliminarInventario.html?id="+id+><input type='submit' class='btn btn-outline-danger'  name='borrar'value='Borrar Inventario'></a></td>
         </tr>
         </center>
         <%}%>
     </table>
     <td><a href="InsertarInventario.html"><input type='submit' class='btn btn-outline-primary'  name='insertar cliente'value='Insertar Inventario'></a></td>
     <% }//fin del if
        }//fin del try
        catch(SQLException e){
         out.println(e);
         }
        /* catch(ClassNotFoundException e){
             out.println(e);
        }*/
    %>


    
</body>
</html>