$(document).ready(function () {

});

//Método que realiza el cambio de fondo de pantalla 
function cambiarFondoPantalla(idFoto)
{
    var fondo = $('#' + idFoto).attr('src');
    $('#CuerpoHomeID').css("background-image", "url(" + fondo+")");
}

//Agrega una nueva nota
function agregarNota()
{
    var arrayIDNotas = [];
    var listaNotas = $('#contenedorNotasID li').length;

    $.each($('#contenedorNotasID li'), function (i, nota) {
        arrayIDNotas.push($(nota).attr('id'));
    });
    //Se toma el ultimo ID para asignar el siguiente ID a la nota
    var siguienteNotaID = arrayIDNotas[listaNotas-1];
    var siguienteNumeroID = siguienteNotaID.replace("Nota", "");
    var numeroID = parseInt(siguienteNumeroID) + 1;

    //Cuenta la cantidad de notas que existen para poder asigar el ID a la nueva
    //var numeroIDNuevaNota = listaNotas + 1;
    var nuevaNota = '<li class="listas unorderedOrdered" id="Nota' + numeroID+'">'+
        '<a class="letralinks" href="#">' +
        '<div style="float:right">' +
        '<i class="icon-2x text-dark-50 flaticon2-trash" onclick="eliminarNota(`Nota'+numeroID+'`)"></i>' +
        '</div>'+
        //'<h2 class="unorderedOrderedH2">Title #2</h2>'+
                            '<input runat="server" ID="Titulo" class="tituloStickyNote" placeholder="Título">'+
                            '<input runat="server" ID="Texto" class="cuerpoStickyNote" placeholder="Escriba notas aquí">'+
                        '</a>' +
        '</li>';
    $('#contenedorNotasID').append(nuevaNota);
}

//Elimina una nota 
function eliminarNota(notadID)
{
    var cantidadNotas = $('#contenedorNotasID li').length;
    if (cantidadNotas>1)
    {
        $('#' + notadID).remove();
    }
    
}