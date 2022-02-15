<%@ page import = "java.io.*,java.sql.*"%>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel='stylesheet' href='css/bootstrap.min.css.css'>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insertar Compra</title>
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
            int idCliente= Integer.parseInt(request.getParameter("idCliente"));
            int idVendedor= Integer.parseInt(request.getParameter("idVendedor"));
            String fecha= request.getParameter("fecha");
            int cantidad=  Integer.parseInt(request.getParameter("cantidad"));
            int Precio= Integer.parseInt(request.getParameter("Precio"));
            int x = stmt.executeUpdate("INSERT INTO compra VALUES("+id+","+"'"+idProducto+"'"+","+"'"+idCliente+"'"+","+"'"+idVendedor+"'"+","+"'"+fecha+"'"+","+"'"+cantidad+"'"+","+"'"+Precio+"'"+")");

         if(x>0){
               out.println("<h1> Compra insertada</h1>");
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
    <a href="MostrarCompra.jsp"><input type='submit' class='btn btn-outline-primary'  name='mostrar'value='Mostrar Compra'></a>


    
</body>
</html>