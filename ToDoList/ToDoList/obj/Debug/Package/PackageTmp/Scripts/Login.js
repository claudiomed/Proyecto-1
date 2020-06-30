
function resultadoLogin(mensajeResultado)
{
    if (mensajeResultado == "Contraseña incorrecta" || mensajeResultado == "El usuario ingresado no existe") {
        //toastr.error(mensajeResultado);
        Swal.fire(
            'Error!',
            mensajeResultado,
            'error'
        )
    }
    else
    {
        //toastr.success(mensajeResultado);
        Swal.fire(
            'Exito!',
            mensajeResultado,
            'success'
        )
        setTimeout(function ()
        {
            window.location.href = "Home.aspx";
        }, 3000)
    }
}