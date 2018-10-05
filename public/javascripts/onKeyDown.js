/**
 * Created by Yc on 2016/6/17.
 */
(function (d,w) {
	 $('.input').keydown(function (e) {
	     if (e.which === 13) {
		 e.preventDefault();
		 var index = $('.input').index(this) + 1;
		 $('.input').eq(index).focus();
	     }
	 });
})(document,window);

/*
 $.ajax({
 method:'post',
 url:'/action',
 data:{ data : fr.result, action : 'imageUp'},
 xhr: function() {
 var xhr = $.ajaxSettings.xhr();
 xhr.upload.onprogress = function(e) {
 var p = Math.floor(e.loaded / e.total *100) + '%';
 console.log(p);
 spanprog.innerText = p;
 };
 return xhr;
 }
 }).done(d=>{

 }).fail(()=>{
 spanprog.innerText = '上传失败，可能图片过大';
 });
 */
