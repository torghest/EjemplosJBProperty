<%@page contentType = "text/html" %>
<html>
<head><title>Numero aleatorio sin repetición</title></head>
<body bgcolor = #AAB42A text = navy>
<%
int supe = Integer.parseInt(request.getParameter("superior"));
int infe = Integer.parseInt(request.getParameter("inferior"));
int canti = Integer.parseInt(request.getParameter("cantidad"));
if (supe - infe >= canti-1){
%>
<jsp:useBean id="objeto" scope="session" class="BeansPropios.BJSPPARAMETROS" /> 
<jsp:setProperty name="objeto"  property="cantidad" value = "<%=canti%>"/> 
<jsp:setProperty name="objeto"  property="inferior" value = "<%=infe%>"/> 
<jsp:setProperty name="objeto"  property="superior" value = "<%=supe%>"/>  
<font size ="6">Números generados</FONT>
<BLOCKQUOTE>
<ol type = "disc">
<%
 int [] resultado = objeto.Devolver();
 for (int i=0; i<resultado.length; i++)
 {%>
  <li><%=resultado[i]%></li>
<%}%>
 
</ol>
Cantidad:<jsp:getProperty name="objeto" property="cantidad"/><br/>
Inferior:<jsp:getProperty name="objeto" property="inferior"/><br/>
Superior:<jsp:getProperty name="objeto" property="superior"/><br/>
<% } else { %>
<h3> no hay suficientes numeros en el intervalo solicitado </h3>
<% } %>
</body>
</html>
