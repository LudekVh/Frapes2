<%@ page import = "java.io.*,java.sql.*"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel='stylesheet' href='css/bootstrap.min.css.css'>
    <title>Crud Cliente</title>
</head>
<center>
<body>
    <h1>Lista De Clientes</h1>
    <%Connection con = null;
    try{
         Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost/Frapes?characterEncoding=latin1&useConfigs=maxPerformance","root","Jair2002");
         //con = DriverManager.getConnection("jdbc:mysql://localhost/ejemplo", "root", "mysql123");
         if(con!=null){
         Statement stmt = con.createStatement();
         ResultSet res = stmt.executeQuery("SELECT * FROM cliente");
     %>
     <table>
        <tr>
            <table style='margin: auto; width: 700px; border-collapse: separate; border-spacing: 40px 5px;'>
            <th>ID</th>
            <th>NOMBRE</th>
            <th>CORREO</th>
            <th>DIRECION</th>
            <th>TELEFONO</th>
        </tr>
        <%while(res.next()){
            int id = res.getInt("id");
            String nombre = res.getString("nombre");
            String correo = res.getString("correo");
            String direcion = res.getString("direcion");
            String telefono = res.getString("telefono");
         %>
         <tr>
            <td><%=id%></td>
            <td><%=nombre%></td>
            <td><%=correo%></td>
            <td><%=direcion%></td>
            <td><%=telefono%></td>
            <td><a href="Actualizar.html?id="+id+><input type='submit' class='btn btn-outline-success'  name='actualizar'value='Actualizar'></a></td>
            <td><a href="Borrar.html?id="+id+><input type='submit' class='btn btn-outline-danger'  name='borrar'value='Borrar'></a></td>
         </tr>
         </center>
         <%}%>
     </table>
     <td><a href="Insertar.html"><input type='submit' class='btn btn-outline-primary'  name='insertar cliente'value='Insertar Cliente'></a></td>
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