<%@ page import = "java.io.*,java.sql.*"%>
<%
int id=Integer.parseInt(request.getParameter("id"));
      try{
         Connection con = null;
         Class.forName("com.mysql.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost/Frapes?characterEncoding=Latin1", "root", "Jair2002");
         if(con != null){
            Statement st = con.createStatement();
            String fecha = request.getParameter("fecha");
            int idProducto = Integer.parseInt(request.getParameter("idProducto"));
            int idCliente =Integer.parseInt(request.getParameter("idCliente"));
            int idVendedor = Integer.parseInt(request.getParameter("idVendedor"));
            int x= st.executeUpdate("UPDATE pedido SET fecha='"+fecha+"',idProducto='"+idProducto+"',idCliente='"+idCliente+"',idVendedor='"+idVendedor+"' WHERE id='"+id+"'");
          
            response.setContentType("text/html");
            out.println("<!DOCTYPE html><html>");
            out.println("<head>");
            out.println("<meta charset=\"UTF-8\" />");
            out.println("<link rel='stylesheet' href='css/bootstrap.min.css.css'>");
            out.println("<title>Actualizar Pedido</title>");
            out.println("</head>");
            out.println("<body bgcolor=\"white\">");
            out.println("<h1>Pedido Actualizado</h1>");
            out.println("<a href=\"MostrarPedido.jsp\"><input type='submit' class='btn btn-outline-primary'  name='mostrar'value='MostrarPedido'></a>");
            out.println("<a href=\"InsertarPedido.html\"><input type='submit' class='btn btn-outline-success'  name='insertar cliente'value='Insertar Pedido'></a>");
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