(function($) {

     $.fn.uploader = function(options) { 

          var settings = $.extend({
          	url: null,
          	url_remove: null,
          	nb: 0
          }, options)

          var elem = $(this)

          createElems(elem, settings)

		
          return $(this); 
     };

     function createElems(elem, settings){
     	elem.append('<div class="row my-2" id="previewUploader"></div><br><input type="file" name="uploader" id="uploaderInput"></input><br><br><button id="uploaderBtn">Envoyer</button>')
     	     $('#uploaderBtn').click(function(event){
     			event.preventDefault()
     			formChecker(elem, settings)
     		})
     }

     function formChecker(elem, settings){

     	if ($('#uploaderInput').prop('files').length > 0) {
     		var file = $('#uploaderInput').prop('files')[0]

     		var formdata = new FormData();

        	formdata.append("upload", file);

     		ajaxSender(elem, settings, formdata)

     	}else{
     		alert("Aucun fichier de définit")
     	}
     }

    function ajaxSender(elem, settings, formdata){
    	jQuery.ajax({
    		url: settings.url,
    		type: "POST",
    		data: formdata,
    		processData: false,
    		contentType: false,
    		success: function (result) {
         		result = JSON.parse(result)
         		if (result.state == 0) {
         			settings.nb = settings.nb+1
         			elem.append('<input type="hidden" name="attachments[]" value="'+result.url+'"></input>')
         			$('#previewUploader').append(`
         				<div class="col-md-3 card mr-2" id="`+settings.nb+`">
         					<div class="row align-items-center">
         						<div class="col-md-5"><img src="`+result.url+`" class="w-100"></div>
         						<div class="col-md-6">`+result.fileName+`</div>
         						<div class="col-md-1 p-0"><div id="deleteUpload" class="btn" onClick="rem`+settings.nb+`('`+result.fileName+`', `+settings.nb+`)">X</div></div>
         						<script>
         							function rem`+settings.nb+`(fileName, idNb){
         								
         								$.post("`+settings.url_remove+`", {
         									data: fileName
         								}, (response) => {
         									response = JSON.parse(reponse)
         									if (response.state == 0){
         										$('#'+idNb).remove()
         									}else{
         										alert("Erreur lors de la suppression du fichier")
         									}
         								})
         							}
         						</script>
         					</div>
         				</div>`)
         		}else{
         			alert("Erreur, cette extention n'est pas autorisée");
         		}
    		}
		});

		
     	
     }


})(jQuery);