<%-- 
    Document   : ComponenteHeader
    Created on : 12-ene-2019, 12:11:53
    Author     : amunguia
--%>

<%@page import="com.crud.*"%>
<%@page import="java.sql.*"%>
<%@page import="com.modelo.*"%>
<%@page import="com.Controlador.*"%>
<%@page import="com.common.*"%>
<%@page import="java.util.*"%>
<%@page import="java.time.LocalDate"%>
<%@page import="com.modelo.Vuelo"%>
<%@page import="java.util.ArrayList"%>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Más que vuelos</title>
        <link rel="stylesheet" href="css/estilos.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        
    </head>
        <body  style="background-color:rgba(76,76,76,1);">
        <nav class="navbar navbar-inverse sombra">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="index.jsp"  class="navbar-brand" >Más que vuelos</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

                    <%
                        Integer id_usuario = null;
                       
                        if (session != null && session.getAttribute("usuario")!=null && session.getAttribute("administrador")!=null  ) {
                            String usuario = (String) session.getAttribute("usuario");
                            Boolean administrador = (Boolean) session.getAttribute("administrador");

                            out.println(" <a style=\"color:#fff;\" class=\"navbar-brand\" href=\"#\">Hola, " + usuario + " </a>"
                                    + "<form class=\"navbar-form navbar-left\">"
                                    + " ");
                            administrador =true;
                            if(administrador){
                                 out.println("<a class=\"btn btn-info\">Administración</a>");
                            }
                            out.println("<a href=\"VistaRegistroCliente.jsp\" class=\"btn btn-info\">Aeropuertos</a>"
                                    + " <a href=\"VistaRegistroCliente.jsp\" class=\"btn btn-info\">Aviones</a> "
                                    + " <a href=\"VistaRegistroCliente.jsp\" class=\"btn btn-info\">Vuelos</a> "
                                    + "    </form> ");
                         
                        } else {

                    %>                 
                            
                    <form name="login" method="post" action="ControladorInicio" class="navbar-form navbar-right">
                        <div class="form-group">
                            <input name="nombre_usuario" type="text" class="form-control" placeholder="Nombre de usuario" required="">
                            <input name="clave" type="password" class="form-control" placeholder="Contraseña" required="">
                            <!--<input hidden name="url" type="text" value="<%=request.getAttribute("url")%>" >--->
                            <input hidden name="llamada" type="text" value="acceso" >
                            <input class="btn btn-primary" type="submit" value="Acceder">
                        </div>
                        <a href="VistaRegistroCliente.jsp" class="btn btn-primary">Registrar</a>
                    </form>
                    <% }
                    %>
                </div><!-- /.navbar-collapse -->
                <div class="row">
                        <div class="col-md-1"></div>
                        <div class="col-md-10">
                            <%
                                out.println("<a href=\"VistaOfertas.jsp\" class=\"btn btn-warning\">Ofertas</a>"
                                         + " <a href=\"VistaPaquetes.jsp\" class=\"btn btn-warning\">Paquetes</a> "
                                         + " <a href=\"VistaUsuarioDetalle.jsp\" class=\"btn btn-warning\">Mi Perfil</a> "
                                         + " <a href=\"VistaContacto.jsp\" class=\"btn btn-warning\">Contacto</a> "
                                         + "    </form> ");
                                %>
                        </div>
                        <div class="col-md-1"></div>
                    </div>
            </div><!-- /.container-fluid -->
        </nav>
                    

                
