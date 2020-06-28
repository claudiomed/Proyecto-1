<%@ Page Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="ToDoList.Registro" %>


<%--<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/Registro.css" rel="stylesheet"/>
</asp:Content>--%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Modal -->
<div class="modal fade" id="TerminosCondicionesModal" tabindex="-1" role="dialog" aria-labelledby="TerminosCondicionesModal" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus rhoncus lacus nisi, sit amet malesuada sapien efficitur sed. In hac habitasse platea dictumst. Cras viverra dui eu lorem ornare, et venenatis lorem cursus. Etiam ac libero placerat, dictum sapien placerat, efficitur nibh. Aenean tincidunt orci leo. Etiam condimentum risus sem, vehicula laoreet erat consequat eget. Integer sem dolor, finibus vitae accumsan non, ultrices vitae ligula. Proin turpis enim, interdum at lacinia in, dignissim in odio. Pellentesque iaculis, ante non eleifend luctus, nisl turpis dictum metus, ac eleifend ex felis nec magna. Proin convallis tempus ex. Integer fermentum consequat tempor.

        Vestibulum fringilla est quis ultricies dapibus. Aliquam erat volutpat. Sed tincidunt nulla lorem. Donec at nisl et lacus malesuada ornare eget et velit. Cras fringilla ligula odio, non lacinia nisi pellentesque ac. Phasellus facilisis ut nunc nec consectetur. Maecenas quis nulla condimentum orci consectetur bibendum vitae ut est. Integer nec eleifend metus. Mauris pharetra libero at tincidunt vehicula. Phasellus placerat maximus viverra. Aliquam erat volutpat. Duis erat felis, tincidunt non gravida eu, rhoncus in libero. Etiam tincidunt, dui vitae tincidunt consectetur, diam nunc hendrerit felis, nec vestibulum ipsum libero eget tortor.

        Phasellus vel facilisis eros, ac sodales sem. Vestibulum scelerisque tortor purus, dapibus porta orci porttitor et. Phasellus non molestie odio. Nam pellentesque lectus tempus est interdum, at convallis leo molestie. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Ut dictum lacus non neque viverra, a mollis massa rhoncus. Nam non finibus urna, rutrum malesuada ipsum. Aliquam et accumsan sem. Fusce egestas mauris eu leo euismod lacinia. Proin accumsan tortor eget sapien egestas, vitae fermentum quam venenatis. Praesent lacinia eleifend auctor.

        Donec at ligula nisi. Nam cursus ipsum vel magna eleifend, vitae pharetra nibh pretium. Aliquam magna arcu, tristique vel risus sed, tristique auctor elit. Donec posuere nec risus sed dignissim. Duis elit diam, feugiat ut magna at, finibus elementum augue. Sed et consequat felis. Nam quam ex, dictum quis auctor a, porta eu neque. Morbi rutrum suscipit laoreet. Nunc aliquam, odio at rutrum aliquam, turpis leo sagittis odio, sit amet sollicitudin diam massa id magna. Cras metus lacus, efficitur a ex sed, venenatis pharetra justo.

        Quisque ut lorem varius, facilisis lectus sed, venenatis nisi. Donec sed nisi vulputate, tincidunt libero vel, tincidunt turpis. Vestibulum in congue tortor. Phasellus consectetur pretium quam non pellentesque. Sed ex purus, scelerisque nec convallis nec, egestas in ligula. Nullam maximus tempor neque, eget dictum erat. Nunc finibus quis lectus ut suscipit. Donec diam odio, feugiat ac volutpat quis, convallis sed metus. Nullam hendrerit vitae odio et sodales.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
        <button type="button" class="btn btn-primary">Aceptar</button>
      </div>
    </div>
  </div>
</div>
    
    <div>
            <!-- main -->
	<div class="main-w3layouts wrapper">
		<h1>To Do List</h1>
        <h2>Registro de Usuarios</h2>
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form id="form1" runat="server">
                    <asp:TextBox runat="server" class="text email" type="email" ID="Email" name="Email" placeholder="Correo Electrónico" required="true"></asp:TextBox>
					
                    <asp:TextBox runat="server" class="text" type="password" ID="Password1" name="Password1" placeholder="Contraseña" required="true"></asp:TextBox>
                    <asp:RegularExpressionValidator runat="server" ControlToValidate="Password1" ></asp:RegularExpressionValidator>
					
                    <asp:TextBox runat="server" class="text w3lpass" type="password" ID="Password2" name="Password2" placeholder="Confirmar Contraseña" required="true"></asp:TextBox>

                    <asp:TextBox runat="server" class="" ID="Tarjeta" name="Tarjeta" placeholder="Número de Tarjeta"></asp:TextBox>
					
                    <div class="wthree-text">
						<label class="anim">
                            <asp:TextBox runat="server" type="checkbox" class="checkbox" required=""></asp:TextBox>
							<a data-target="#TerminosCondicionesModal" data-toggle="modal">Acepto los terminos y condiciones</a>
						</label>
						<div class="clear"> </div>
					</div>
					<%--<input type="submit" value="REGISTRARME">--%>
                    <asp:Button ID="enviar" runat="server" type="submit" value="REGISTRARME" Text="REGISTRARME" OnClick="enviar_Click"/> 

				</form>
				<p>¿Ya tiene una cuenta? <a href="Login.aspx">INGRESE AQUÍ</a></p>
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
        <!-- Modal -->
</div>
   
</asp:Content>




