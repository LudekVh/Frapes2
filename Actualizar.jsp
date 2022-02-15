<%@ page import = "java.io.*,java.sql.*"%>
<%
int id=Integer.parseInt(request.getParameter("id"));
      try{
         Connection con = null;
         Class.forName("com.mysql.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost/Frapes?characterEncoding=Latin1", "root", "Jair2002");
         if(con != null){
            Statement st = con.createStatement();
            ResultSet res=st.executeQuery("SELECT * FROM cliente WHERE id = '"+id+"'");
            
            while(res.next()){
               String nombre =res.getString("nombre");
               String correo =res.getString("correo");
               String direcion =res.getString("direcion");
               String telefono =res.getString("telefono");
               
               out.println("<center>");
               out.println("<div class='contendor'>");
               out.println("<form action=\"ActualizarCli.jsp\" class='formulario' id='formulario' name='formulario'>");
               out.println("<center>Actualizar Cliente</center>");
               out.println("<div class='contendor'>");
               out.println("<input type=\"hidden\" name=\"id\" value='"+id+"'>");
               out.println("<label>nombre</label>");
               out.println("<input type=\"text\" name=\"nombre\" value='"+nombre+"'>");
               out.println("<label>correo</label>");
               out.println("<input type=\"text\" name=\"correo\" value='"+correo+"'>");
               out.println("<label> direcion</label>");
               out.println("<input type=\"text\" name=\"direcion\" value='"+direcion+"'>");
               out.println("<label> telefono</label>");
               out.println("<input type=\"text\" name=\"telefono\" value='"+telefono+"'>");
               out.println("<input type=\"submit\" class='btn' name='actualizar' value='Actualizar'>");
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
            out.println("<title>Actualizar datos Datos</title>");
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