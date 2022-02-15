<%@ page import = "java.io.*,java.sql.*"%>
<%
int id=Integer.parseInt(request.getParameter("id"));
      try{
         Connection con = null;
         Class.forName("com.mysql.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost/Frapes?characterEncoding=Latin1", "root", "Jair2002");
         if(con != null){
            Statement st = con.createStatement();
           
            String nombre = request.getParameter("nombre");
            int precio = Integer.parseInt(request.getParameter("precio"));
            int x= st.executeUpdate("UPDATE producto SET nombre='"+nombre+"',precio='"+precio+"' WHERE id='"+id+"'");
          
            response.setContentType("text/html");
            out.println("<!DOCTYPE html><html>");
            out.println("<head>");
            out.println("<meta charset=\"UTF-8\" />");
            out.println("<link rel='stylesheet' href='css/bootstrap.min.css.css'>");
            out.println("<title>Actualizar Producto</title>");
            out.println("</head>");
            out.println("<body bgcolor=\"white\">");
            out.println("<h1>Producto Actualizado</h1>");
            out.println("<a href=\"MostrarProducto.jsp\"><input type='submit' class='btn btn-outline-primary'  name='mostrar'value='Mostrar Producto'></a>");
            out.println("<a href=\"InsertarProducto.html\"><input type='submit' class='btn btn-outline-success'  name='insertar cliente'value='Insertar Producto'></a>");
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