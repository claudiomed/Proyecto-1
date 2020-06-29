<%@ Page Language="C#" MasterPageFile="~/Layout.master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ToDoList.Home" %>


    <asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <link href="Content/StickyNotes.css" rel="stylesheet"/>
        <script src="Scripts/Home.js"></script>

<body id="CuerpoHomeID" style="background-image: url(Content/images/GrayImage.jpg)">
    <form id="form1" runat="server">
       
       <!--Barra de navegacion para usuarios con cuenta pro-->
        <asp:Placeholder runat="server" ID="NavCuentaPro" Visible="false">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
              <a class="navbar-brand" href="#"><b>ToDoList App</b></a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="">
                <ul class="navbar-nav">
                  <li class="nav-item mr-4">
                    <a class="nav-link" onclick="agregarNota()" style="background-color:lawngreen">Agregar Nota</a>
                  </li>
                    <li class="nav-item mr-4">
                        <a class="nav-link" data-toggle="modal" data-target="#FotosModal" style="background-color:yellow" href="#">Cambiar Fondo</a>
                    </li>
                    <li class="nav-item mr-4">
                        <a class="nav-link" style="background-color:dodgerblue" href="Informacion.aspx">Información Premium</a>
                    </li>

                </ul>
              </div>
                
                <div>   

                    <ul class="navbar-nav">
                        <li class="nav-item mr-4">
                            <a class="nav-link" style="background-color:dodgerblue; color:white;"><%:Session["correoUsuario"] %></a>
                        </li>
                        <li class="nav-item mr-4">
                            <asp:LinkButton runat="server" class="nav-link badge-danger" onclick="cerrarSesionBtn_Click">Cerrar Sesión</asp:LinkButton>
                        </li>
                    </ul>
                    
                    
                </div>

            </nav>
        </asp:Placeholder>

        <!--Barra de navegacion para usuarios con cuenta standard-->
        <asp:Placeholder runat="server" ID="NavCuentaStandard" Visible="false">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
              <a class="navbar-brand" href="#">ToDoList App</a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>
              <div class="collapse navbar-collapse" id="">
                <ul class="navbar-nav">
                  
                  <li class="nav-item mr-4">
                    <a class="nav-link" style="background-color:lawngreen" onclick="agregarNota()">Agregar Nota</a>
                  </li>
            
                </ul>
              </div>

                <div>
                     <ul class="navbar-nav">
                        <li class="nav-item mr-4">
                            <a class="nav-link" style="background-color:dodgerblue; color:white;"><%:Session["correoUsuario"] %></a>
                        </li>
                        <li class="nav-item mr-4">
                            <asp:LinkButton runat="server" class="nav-link badge-danger" onclick="cerrarSesionBtn_Click">Cerrar Sesión</asp:LinkButton>
                        </li>
                    </ul>

                </div>
            </nav>
        </asp:Placeholder>

            <ul class="unorderedLists" id="contenedorNotasID">
                <li class="listas unorderedOrdered" id="Nota1">
                    <a class="letralinks" href="#">
                        <div style="float:right">
                           <i class="icon-2x text-dark-50 flaticon2-trash" onclick="eliminarNota('Nota1')"></i>
                        </div>
                        <asp:TextBox runat="server" ID="Titulo1" class="tituloStickyNote" placeholder="Título"></asp:TextBox>
                        <asp:TextBox runat="server" ID="Texto1" class="cuerpoStickyNote" placeholder="Escriba notas aquí"> </asp:TextBox>
                    </a>
                </li>
                <%--<li class="listas unorderedOrdered">
                    <a class="letralinks" href="#">
                    <h2 class="unorderedOrderedH2">Title #2</h2>
                    <p class="unorderedOrderedP">Text Content #2</p>
                    </a>
                </li> 
                <li class="listas unorderedOrdered">
                    <a class="letralinks" href="#">
                    <h2 class="unorderedOrderedH2">Title #3</h2>
                    <p class="unorderedOrderedP">Text Content #3</p>
                    </a>
                </li>  --%>
        
            </ul>

    
    </form>

    <!-- Modal de fotos-->
<div class="modal fade" id="FotosModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" data-backdrop="static"  aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Imagenes disponibles</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="container">
            <div class="row">
                <div class="col-sm col-md">
                    <a onclick="cambiarFondoPantalla('GrayImage')""><img id="GrayImage" src="Content/images/GrayImage.jpg" style="width:300px; height:200px"/></a>
                </div>
                <div class="col-sm col-md">
                    <a onclick="cambiarFondoPantalla('imgGato1')"><img id="imgGato1" src="Content/images/Cat1.jpg" style="width:300px; height:200px"/></a>
                </div>

                <div class="col-sm col-md">
                    <a onclick="cambiarFondoPantalla('imgPerro1')""><img id="imgPerro1" src="Content/images/Dog1.jpg" style="width:300px; height:200px"/></a>
                </div>
            </div>

        </div>
      </div>
    </div>
  </div>
</div>
</body>
    </asp:Content>



    
