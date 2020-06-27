<%@ Page Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="ToDoList.Registro" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/Registro.css" rel="stylesheet"/>
</asp:Content>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            <!-- main -->
	<div class="main-w3layouts wrapper">
		<h1>To Do List</h1>
        <h2>Registro de Usuarios</h2>
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form id="form1" runat="server">
                    <asp:TextBox runat="server" class="text email" type="email" ID="Email" name="Email" placeholder="Correo Electrónico" required=""></asp:TextBox>
					
                    <asp:TextBox runat="server" class="text" type="password" ID="Password1" name="Password1" placeholder="Contraseña" required=""></asp:TextBox>
					
                    <asp:TextBox runat="server" class="text w3lpass" type="password" ID="Password2" name="Password2" placeholder="Confirmar Contraseña" required=""></asp:TextBox>
					<div class="wthree-text">
						<label class="anim">
                            <asp:TextBox runat="server" type="checkbox" class="checkbox" required=""></asp:TextBox>
							<span>Acepto los terminos y condiciones</span>
						</label>
						<div class="clear"> </div>
					</div>
					<%--<input type="submit" value="REGISTRARME">--%>
                    <asp:Button ID="enviar" runat="server" type="submit" value="REGISTRARME" Text="REGISTRARME" OnClick="enviar_Click"/> 

				</form>
				<p>¿Ya tiene una cuenta? <a href="#">INGRESE AQUÍ</a></p>
			</div>
		</div>
		<!-- copyright -->
		<div class="colorlibcopy-agile">
			<p>© 2018 Colorlib. All rights reserved | Design by <a href="https://colorlib.com/" target="_blank">Colorlib</a></p>
		</div>
		<!-- //copyright -->
		<ul class="colorlib-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
	<!-- //main -->
        </div>
   
</asp:Content>




