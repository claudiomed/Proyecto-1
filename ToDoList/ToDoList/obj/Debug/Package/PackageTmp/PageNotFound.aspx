<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageNotFound.aspx.cs" Inherits="ToDoList.Errors.PageNotFound" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page Not Found</title>
    <link href="Content/PageNotFound.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
         <div id="clouds">
            <div class="cloud x1"></div>
            <div class="cloud x1_5"></div>
            <div class="cloud x2"></div>
            <div class="cloud x3"></div>
            <div class="cloud x4"></div>
            <div class="cloud x5"></div>
        </div>
        <div class='c'>
            <div class='_404'>404</div>
            <hr>
            <div class='_1'>THE PAGE</div>
            <div class='_2'>WAS NOT FOUND</div>
            <a class='btn' href='Home.aspx'>BACK TO MARS</a>
        </div>
    </form>
</body>
</html>
