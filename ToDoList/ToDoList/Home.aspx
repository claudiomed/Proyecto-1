<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ToDoList.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>To Do List</title>
    <link href="Content/StickyNotes.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <ul>
        <li>
            <a href="#">
            <%--<h2>Title #1</h2>--%>
            <asp:TextBox runat="server" ID="Titulo" class="tituloStickyNote" placeholder="Título"></asp:TextBox>
            <asp:TextBox runat="server" ID="Texto1" class="cuerpoStickyNote" placeholder="Escriba notas aquí"> </asp:TextBox>
            </a>
        </li>
        <li>
            <a href="#">
            <h2>Title #2</h2>
            <p>Text Content #2</p>
            </a>
        </li>
        <li>
            <a href="#">
            <h2>Title #3</h2>
            <p>Text Content #3</p>
            </a>
        </li>  
        <li>
            <a href="#">
            <h2>Title #4</h2>
            <p>Text Content #4</p>
            </a>
        </li>    
        <li>
            <a href="#">
            <h2>Title #5</h2>
            <p>Text Content #5</p>
            </a>
        </li> 
        <li>
            <a href="#">
            <h2>Title #6</h2>
            <p>Text Content #6</p>
            </a>
        </li>   
    </ul>

        </div>
    </form>
</body>
</html>
