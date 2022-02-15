<%@ page import = "java.io.*,java.sql.*"%>
<%
int id=Integer.parseInt(request.getParameter("id"));
      try{
         Connection con = null;
         Class.forName("com.mysql.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost/Frapes?characterEncoding=Latin1", "root", "Jair2002");
         if(con != null){
            Statement st = con.createStatement();
            ResultSet res=st.executeQuery("SELECT * FROM venta WHERE id = '"+id+"'");
            
            while(res.next()){
               int idProducto =res.getInt("idProducto");
               int idCliente =res.getInt("idCliente");
               int idVendedor =res.getInt("idVendedor");
               String fecha =res.getString("fecha");
               int cantidad =res.getInt("cantidad");
               int Precio =res.getInt("Precio");

               
               out.println("<center>");
               out.println("<div class='contendor'>");
               out.println("<form action=\"ActualizarVent.jsp\" class='formulario' id='formulario' name='formulario'>");
               out.println("<center>Actualizar Cliente</center>");
               out.println("<div class='contendor'>");
               out.println("<input type=\"hidden\" name=\"id\" value='"+id+"'>");
               out.println("<label>idProducto</label>");
               out.println("<input type=\"text\" name=\"idProducto\" value='"+idProducto+"'>");
               out.println("<label>idCliente</label>");
               out.println("<input type=\"text\" name=\"idCliente\" value='"+idCliente+"'>");
               out.println("<label> idVendedor</label>");
               out.println("<input type=\"text\" name=\"idVendedor\" value='"+idVendedor+"'>");
               out.println("<label>fecha</label>");
               out.println("<input type=\"text\" name=\"fecha\" value='"+fecha+"'>");
               out.println("<label> cantidad</label>");
               out.println("<input type=\"text\" name=\"cantidad\" value='"+cantidad+"'>");
               out.println("<label> Precio</label>");
               out.println("<input type=\"text\" name=\"Precio\" value='"+Precio+"'>");

               out.println("<input type=\"submit\" class='btn' name='actualizar pedido' value='Actualizar Venta'>");
               out.println("</div>");
               out.println("</div>");
               out.println("</center>");
            }
           
            response.setContentType("text/html");
            out.println("<!DOCTYPE html><html>");
            out.println("<head>");
            out.println("<meta charset=\"UTF-8\" />");
            out.println("<link rel='stylesheet' type='text/css' href='Insertar.css'>");
            out.println("<link rel='stylesheet' href='css/bootstrap.min.css.css'>");
            out.println("<title>Actualizar Venta</title>");
            out.println("</head>");
            out.println("<body bgcolor=\"white\">");
            out.println("<h1></h1>");
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