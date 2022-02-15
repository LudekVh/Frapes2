<%@ page import = "java.io.*,java.sql.*"%>
<%
int id=Integer.parseInt(request.getParameter("id"));
      try{
         Connection con = null;
         Class.forName("com.mysql.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost/Frapes?characterEncoding=Latin1", "root", "Jair2002");
         if(con != null){
            Statement st = con.createStatement();
            
            int idProducto = Integer.parseInt(request.getParameter("idProducto"));
            int idCliente =Integer.parseInt(request.getParameter("idCliente"));
            int idVendedor = Integer.parseInt(request.getParameter("idVendedor"));
            String fecha = request.getParameter("fecha");
            int cantidad = Integer.parseInt(request.getParameter("cantidad"));
            int Precio = Integer.parseInt(request.getParameter("Precio"));

            int x= st.executeUpdate("UPDATE venta SET idProducto='"+idProducto+"',idCliente='"+idCliente+"',idVendedor='"+idVendedor+"',fecha='"+fecha+"',cantidad='"+cantidad+"',Precio='"+Precio+"' WHERE id='"+id+"'");
          
            response.setContentType("text/html");
            out.println("<!DOCTYPE html><html>");
            out.println("<head>");
            out.println("<meta charset=\"UTF-8\" />");
            out.println("<link rel='stylesheet' href='css/bootstrap.min.css.css'>");
            out.println("<title>Actualizar Venta</title>");
            out.println("</head>");
            out.println("<body bgcolor=\"white\">");
            out.println("<h1>Venta Actualizada</h1>");
            out.println("<a href=\"MostrarVenta.jsp\"><input type='submit' class='btn btn-outline-primary'  name='mostrar'value='Mostrar Venta'></a>");
            out.println("<a href=\"InsertarVenta.html\"><input type='submit' class='btn btn-outline-success'  name='insertar cliente'value='Insertar Venta'></a>");
            out.println("</body>");
            out.println("</html>");
         }//fin del if
      }//fin del try
      catch(ClassNotFoundException e){
        
      
         out.println(e);
      }
      catch(SQLException e){
         
      
         out.println(e);
      
        //
      }

%>