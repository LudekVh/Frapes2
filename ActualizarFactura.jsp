<%@ page import = "java.io.*,java.sql.*"%>
<%
int numero=Integer.parseInt(request.getParameter("numero"));
      try{
         Connection con = null;
         Class.forName("com.mysql.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost/Frapes?characterEncoding=Latin1", "root", "Jair2002");
         if(con != null){
            Statement st = con.createStatement();
            ResultSet res=st.executeQuery("SELECT * FROM factura WHERE numero = '"+numero+"'");
        
            
            while(res.next()){
               int idCliente =res.getInt("idCliente");
               int idVendedor =res.getInt("idVendedor");
               String fecha =res.getString("fecha");
               String prosupuesto =res.getString("prosupuesto");
               int total =res.getInt("total");
               
               out.println("<center>");
               out.println("<div class='contendor'>");
               out.println("<form action=\"ActualizarFac.jsp\" class='formulario' id='formulario' name='formulario'>");
               out.println("<center>Actualizar Factura</center>");
               out.println("<div class='contendor'>");
              out.println("<input type=\"hidden\" name=\"numero\" value='"+numero+"'>");
               out.println("<label>idCliente</label>");
               out.println("<input type=\"text\" name=\"idCliente\" value='"+idCliente+"'>");
               out.println("<label>idVendedor</label>");
               out.println("<input type=\"text\" name=\"idVendedor\" value='"+idVendedor+"'>");
               out.println("<label>fecha</label>");
               out.println("<input type=\"text\" name=\"fecha\" value='"+fecha+"'>");
               out.println("<label> prosupuesto</label>");
               out.println("<input type=\"text\" name=\"prosupuesto\" value='"+prosupuesto+"'>");
               out.println("<label> total</label>");
               out.println("<input type=\"text\" name=\"total\" value='"+total+"'>");
               out.println("<input type=\"submit\" class='btn' name='actualizar factura' value='Actualizar Factura'>");
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
            out.println("<title>Actualizar Factura</title>");
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