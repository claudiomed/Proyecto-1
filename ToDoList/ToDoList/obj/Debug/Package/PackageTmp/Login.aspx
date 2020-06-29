<%@ Page Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ToDoList.Login" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <title>Login V17</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="Content/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Content/bootstrap.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Content/animate.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Content/hamburgers.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Content/animsition.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Content/select2.min.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Content/daterangepicker.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Content/util.css"/>
	<link rel="stylesheet" type="text/css" href="Content/main.css"/>
<!--===============================================================================================-->
    <script src="Scripts/jquery-3.3.1.intellisense.js"></script>
    <script src="Scripts/jquery-3.3.1.js"></script>
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/Login.js"></script>
    
    <script src="Content/plugins/general/toastr/build/toastr.min.js"></script>
    <link href="Content/plugins/general/toastr/build/toastr.css" rel="stylesheet"/>
</asp:Content>

<%--<body>--%>
    <asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <%-- <form id="form1" runat="server">--%>
        
            <div class="limiter">
		        <div class="container-login100">
			        <div class="wrap-login100">
			    <form id="form1" runat="server" class="login100-form validate-form">
					<span class="login100-form-title p-b-50">
						To Do List!
					</span>
					
					<div class="wrap-input100 rs1-wrap-input100 validate-input m-b-20" data-validate="Type user name">
						<%--<input id="first-name" class="input100" type="text" name="username" placeholder="User name">--%>
						<asp:TextBox id="email" runat="server" class="input100" type="email" name="email" placeholder="Correo Electrónico"></asp:TextBox>
                        <span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 rs2-wrap-input100 validate-input m-b-20" data-validate="Type password">
						<%--<input class="input100" type="password" name="pass" placeholder="Contraseña"/>--%>
                        <asp:TextBox  id="pass"  runat="server" class="input100" type="password" name="pass" data-validate="Type password" placeholder="Contraseña"> </asp:TextBox>
						<span class="focus-input100"></span>
					</div>
					
					<div class="container-login100-form-btn">
						<%--<button runat="server" ID="Enviar"  class="login100-form-btn">
							Ingresar
						</button>--%>
                        <asp:Button runat="server" ID="Enviar" onclick="Enviar_Click" class="login100-form-btn" Text="Ingresar"/>
					</div>

					<div class="w-full text-center p-t-27 p-b-239">
						<span class="txt1">
							Olvide
						</span>

						<a href="#" class="txt2">
							Contraseña
						</a>
					</div>

					<div class="w-full text-center">
						<a href="Registro.aspx" class="txt3">
							Crear Cuenta
						</a>
					</div>
				</form>

				<%--<div class="login100-more" style="background-image: url('Content/images/bg-01.jpg');"></div>--%>
				<div class="login100-more" style="background-image: url('Content/images/StickyNotes.jpg');"></div>
			</div>
		</div>
	
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
    <script src="Scripts/jquery-3.3.1.min.js"></script>
<!--===============================================================================================-->
    <script src="Scripts/animsition.min.js"></script>
<!--===============================================================================================-->
            <script src="Scripts/popper.js"></script>
            <script src="Scripts/bootstrap.min.js"></script>
<!--===============================================================================================-->
            <script src="Scripts/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
<!--===============================================================================================-->
            <script src="Scripts/daterangepicker.js"></script>
            <script src="Scripts/moment.min.js"></script>
<!--===============================================================================================-->
            <script src="Scripts/countdowntime.js"></script>
<!--===============================================================================================-->
            <script src="Scripts/main.js"></script>
        </div>
   <%-- </form>--%>
</asp:Content>
<%--</html>--%>
