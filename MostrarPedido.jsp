<%@ page import = "java.io.*,java.sql.*"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel='stylesheet' href='css/bootstrap.min.css.css'>
    <title>Crud Pedido</title>
</head>
<center>
<body>
    <h1>Pedido</h1>
    <%Connection con = null;
   try{
         Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost/Frapes?characterEncoding=latin1&useConfigs=maxPerformance","root","Jair2002");
         //con = DriverManager.getConnection("jdbc:mysql://localhost/ejemplo", "root", "mysql123");
         if(con!=null){
         Statement stmt = con.createStatement();
         ResultSet res = stmt.executeQuery("SELECT * FROM pedido");


     %>
     <table>
        <tr>
            <table style='margin: auto; width: 700px; border-collapse: separate; border-spacing: 40px 5px;'>
            <th>ID</th>
            <th>FECHA</th>
            <th>ID PRODUCTO</th>
            <th>ID CLIENTE</th>
            <th>ID VENDEDOR</th>

        
        </tr>
        <%while(res.next()){
            int id = res.getInt("id");
            String fecha = res.getString("fecha");
            int idProducto = res.getInt("idProducto");
            int idCliente = res.getInt("idCliente");
            int idVendedor = res.getInt("idvendedor");


         %>
         <tr>
            <td><%=id%></td>
             <td><%=fecha%></td>
            <td><%=idProducto%></td>
            <td><%=idCliente%></td>
            <td><%=idVendedor%></td>
            
            <td><a href="ActualizarPedido.html?id="+id+><input type='submit' class='btn btn-outline-success'  name='actualizar'value='Actualizar Pedido'></a></td>
            <td><a href="EliminarPedido.html?id="+id+><input type='submit' class='btn btn-outline-danger'  name='borrar'value='Borrar Pedido'></a></td>
         </tr>
         </center>
         <%}%>
     </table>
     <td><a href="InsertarPedido.html"><input type='submit' class='btn btn-outline-primary'  name='insertar cliente'value='Insertar Pedido'></a></td>
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