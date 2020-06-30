//Se utiliza el document ready cuando queremos que se realicen acciones cuando la pagina carta o cuando hay un evento que queres utilizar 
$(document).ready(function () {
    $('#Password2').change(function ()
    {
        var password1 = $('#Password1').val();
        var password2 = $('#Password2').val();
        if (password1 != password2) {
            $('#enviar').prop('disabled', true);
            toastr.error("Las contraseñas no coinciden");
        }
        else
        {
            $('#enviar').prop('disabled', false);
        }
    });


});

//Muestra el resultado de la creacion de la cuenta, si fue existosa o no. 
function resultadoCreacionCuenta(mensaje) {
    var icono = '';
    var titulo = '';
    if (mensaje == 'Registro exitóso!') {
        icono = 'success';
        titulo = 'Exito!';

        setTimeout(function () {
            window.location.href = "Login.aspx";
        }, 3000);
        
    }
    else {
        icono = 'error';
        titulo = 'Error!';
        $('#Email').val("");
        $('#Password1').val("");
        $('#Password2').val("");
        $('#Tarjeta').val("");
    }


    Swal.fire(
        titulo,
        mensaje,
        icono
    )
}

