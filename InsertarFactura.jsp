<%@ page import = "java.io.*,java.sql.*"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel='stylesheet' href='css/bootstrap.min.css.css'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insertar Factura</title>
</head>
<body>
    <%Connection con = null;
    try{
         Class.forName("com.mysql.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost/Frapes?characterEncoding=latin1&useConfigs=maxPerformance","root","Jair2002");
         //con = DriverManager.getConnection("jdbc:mysql://localhost/ejemplo", "root", "mysql123");
         if(con!=null){
            Statement stmt = con.createStatement();
            String numero= request.getParameter("numero");
            int idCliente= Integer.parseInt(request.getParameter("idCliente"));
            int idVendedor= Integer.parseInt(request.getParameter("idVendedor"));
            String fecha= request.getParameter("fecha");
            String prosupuesto= request.getParameter("prosupuesto");
            int total= Integer.parseInt(request.getParameter("total"));
            int x = stmt.executeUpdate("INSERT INTO factura VALUES("+numero+","+"'"+idCliente+"'"+","+"'"+idVendedor+"'"+","+"'"+fecha+"'"+","+"'"+prosupuesto+"'"+","+"'"+total+"'"+")");
         if(x>0){
               out.println("<h1> Factura insertada</h1>");
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
    <a href="MostrarFactura.jsp"><input type='submit' class='btn btn-outline-primary'  name='mostrar'value='Mostrar Factura'></a>


    
</body>
</html>