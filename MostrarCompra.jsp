<%@ page import = "java.io.*,java.sql.*"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel='stylesheet' href='css/bootstrap.min.css.css'>
    <title>Crud Compra</title>
</head>
<center>
<body>
    <h1>Lista De Compra</h1>
    <%Connection con = null;
    try{
         Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost/Frapes?characterEncoding=latin1&useConfigs=maxPerformance","root","Jair2002");
         //con = DriverManager.getConnection("jdbc:mysql://localhost/ejemplo", "root", "mysql123");
         if(con!=null){
         Statement stmt = con.createStatement();
         ResultSet res = stmt.executeQuery("SELECT * FROM compra");
     %>
     <table>
        <tr>
            <table style='margin: auto; width: 700px; border-collapse: separate; border-spacing: 40px 5px;'>
            <th>ID</th>
            <th>IDPRODUCTO</th>
            <th>IDCLIENTE/th>
            <th>IDVENDEDOR</th>
            <th>FECHA</th>
            <th>CANTIDAD</th>
            <th>PRODUCTO</th>
        </tr>
        <%while(res.next()){
            int id = res.getInt("id");
               int idProducto= res.getInt("idProducto");
               int idCliente= res.getInt("idCliente");
               int idVendedor= res.getInt("idVendedor");
               String fecha= res.getString("fecha");
               int cantidad= res.getInt("cantidad");
               int Precio= res.getInt("Precio");
         %>
         <tr>
            <td><%=id%></td>
            <td><%=idCliente%></td>
            <td><%=idProducto%></td>
            <td><%=idVendedor%></td>
            <td><%=fecha%></td>
            <td><%=cantidad%></td>
            <td><%=Precio%></td>
            <td><a href="ActualizarCompra.html?id="+id+><input type='submit' class='btn btn-outline-success'  name='actualizar 'value='Actualizar Compra'></a></td>
            <td><a href="EliminarCompra.html?id="+id+><input type='submit' class='btn btn-outline-danger'  name='borrar'value='Borrar Compra'></a></td>
         </tr>
         </center>
         <%}%>
     </table>
     <td><a href="InsertarCompra.html"><input type='submit' class='btn btn-outline-primary'  name='insertar cliente'value='Insertar Compra'></a></td>
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