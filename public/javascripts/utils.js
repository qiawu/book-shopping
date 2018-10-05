/**
 * Created by Yc on 2016/6/17.
 */

var utils = (function () {

    return {
        alertDanger : function (text) {
            return '<div class="alert alert-danger alert-dismissible" role="alert">'+
            '<button class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>' +
                '</button>' + text+'</div>';
        },
        print: function (elemId) {
	    var mywindow = window.open('', 'PRINT', 'height=400,width=600');

	    mywindow.document.write('<html><head><title>' + document.title  + '</title>');
	    mywindow.document.write('</head><body >');
	    mywindow.document.write('<h1>' + document.title  + '</h1>');
	    mywindow.document.write(document.getElementById(elemId).innerHTML);
	    mywindow.document.write('</body></html>');

	    mywindow.document.close(); // necessary for IE >= 10
	    mywindow.focus(); // necessary for IE >= 10*/

	    mywindow.print();
	    mywindow.close();

	    return true;
        }
    }
}());
