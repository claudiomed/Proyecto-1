
function resultadoLogin(mensajeResultado)
{
    if (mensajeResultado == "Contraseña incorrecta" || mensajeResultado == "El usuario ingresado no existe") {
        toastr.error(mensajeResultado);
    }
    else
    {
        toastr.success(mensajeResultado);
        setTimeout(function ()
        {
            window.location.href = "Home.aspx";
        }, 3000)
    }
}