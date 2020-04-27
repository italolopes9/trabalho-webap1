<!DOCTYPE html>



<html lang="pt-br">

<head>
  <%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <meta content="text/html" ; charset="UTF-8" http-equiv="content-type">
  <title>Calculo de empréstimo - JSP</title>
  <link rel="stylesheet" href="./css/style.css">
  <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
  <script type="text/javascript" src="js/jquery-3.5.0.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>

<body>
  <%
    double valorFinanciado;
    double juros;
    double parcela;
    double valorJuros;
    double valorTotal;
    int meses;

      valorFinanciado = Double.parseDouble(request.getParameter("valor_financiado"));
      juros = Double.parseDouble(request.getParameter("juros_financiamento"));
      meses = Integer.parseInt(request.getParameter("meses_financiamento"));
  
  
      parcela = valorFinanciado/((Math.pow((juros/100)+1, meses)-1)/(Math.pow((juros/100)+1, meses)*(juros/100)));
      
      valorTotal = parcela * meses;
      valorJuros = valorTotal - valorFinanciado;
    
  %>
  <div class="banner">
    <div class="testejsp ">
      <h2>Valor da parcela: R$ <%= parcela %></h2>
      <h2>Valor do juros: R$ <%= valorJuros %></h2>
      <h2>Valor da Total: R$ <%= valorTotal %></h2>
      <button type="button" class="btn btn-danger teste1">
        <a href="index.html" style="text-decoration: none;color: white; font-weight: bold;">Voltar</a>
      </button>
    </div>
  </div>

</body>

</html>