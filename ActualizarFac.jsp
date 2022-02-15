<%@ page import = "java.io.*,java.sql.*"%>
<%
int numero=Integer.parseInt(request.getParameter("numero"));
      try{
         Connection con = null;
         Class.forName("com.mysql.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost/Frapes?characterEncoding=Latin1", "root", "Jair2002");
         if(con != null){
            Statement st = con.createStatement();
            int idCliente = Integer.parseInt(request.getParameter("idCliente"));
            int idVendedor = Integer.parseInt(request.getParameter("idVendedor"));
            String fecha = request.getParameter("fecha");
            String prosupuesto = request.getParameter("prosupuesto");
            int total= Integer.parseInt(request.getParameter("total"));
            int x= st.executeUpdate("UPDATE factura SET idCliente='"+idCliente+"',idVendedor='"+idVendedor+"',fecha='"+fecha+"',prosupuesto='"+prosupuesto+"',total='"+total+"' WHERE numero='"+numero+"'");
          
            response.setContentType("text/html");
            out.println("<!DOCTYPE html><html>");
            out.println("<head>");
            out.println("<meta charset=\"UTF-8\" />");
            out.println("<link rel='stylesheet' href='css/bootstrap.min.css.css'>");
            out.println("<title>Actualizar Factura</title>");
            out.println("</head>");
            out.println("<body bgcolor=\"white\">");
            out.println("<h1>Factura Actualizada</h1>");
            out.println("<a href=\"MostrarFactura.jsp\"><input type='submit' class='btn btn-outline-primary'  name='mostrar'value='Mostrar Factura'></a>");
            out.println("<a href=\"InsertarFactura.html\"><input type='submit' class='btn btn-outline-success'  name='insertar cliente'value='Insertar Factura'></a>");
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