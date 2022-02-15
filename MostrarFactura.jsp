<%@ page import = "java.io.*,java.sql.*"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel='stylesheet' href='css/bootstrap.min.css.css'>
    <title>Crud Factura</title>
</head>
<center>
<body>
    <h1>FACTURAS</h1>
    <%Connection con = null;
    try{
      Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection("jdbc:mysql://localhost/Frapes?characterEncoding=latin1&useConfigs=maxPerformance","root","Jair2002");
         //con = DriverManager.getConnection("jdbc:mysql://localhost/ejemplo", "root", "mysql123");
         if(con!=null){
         Statement stmt = con.createStatement();
         ResultSet res = stmt.executeQuery("SELECT * FROM factura");

     %>
     <table>
        <tr>
            <table style='margin: auto; width: 700px; border-collapse: separate; border-spacing: 40px 5px;'>
            <th>NUMERO</th>
            <th>ID CLIENTE</th>
            <th>ID VENDEDOR</th>
            <th>FECHA</th>
            <th>PROSUPUESTO</th>
            <th>TOTAL</th>
        </tr>
        <%while(res.next()){
            String numero = res.getString("numero");
            int idCliente = res.getInt("idCliente");
            int idVendedor = res.getInt("idVendedor");
            String fecha = res.getString("fecha");
            String prosupuesto = res.getString("prosupuesto");
            int total = res.getInt("total");

         %>
         <tr>
            <td><%=numero%></td>
            <td><%=idCliente%></td>
            <td><%=idVendedor%></td>
            <td><%=fecha%></td>
            <td><%=prosupuesto%></td>
            <td><%=total%></td>
            <td><a href="ActualizarFactura.html?id="+id+><input type='submit' class='btn btn-outline-success'  name='actualizar'value='Actualizar Factura'></a></td>
            <td><a href="EliminarFactura.html?id="+id+><input type='submit' class='btn btn-outline-danger'  name='borrar'value='Borrar Factura'></a></td>
         </tr>
         </center>
         <%}%>
     </table>
     <td><a href="InsertarFactura.html"><input type='submit' class='btn btn-outline-primary'  name='insertar cliente'value='Insertar Factura'></a></td>
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