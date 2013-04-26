//确认使用条款后才可注册 
jQuery(function($){
  $('#cbx_confirm_term').click(function(){
    if(this.checked)
      {
        $('#btn_submit_register').attr('disabled',false);
      }
      else
        {
          $('#btn_submit_register').attr('disabled',true);
        }
  });
  //以ajax方式提交注册表单
  /*
  $('#btn_submit_register').on('click',function(){
    var the_client = null;
    $.post("clients.json",$('#register_form').serialize()).pipe(function(client){
      the_client = client;
      delete the_client.id;delete the_client.created_at,delete the_client.updated_at;
      $.post($('#il_platform_register_url').val(),{client : the_client}).pipe(function(){
        var re_url = "http://" + the_client.subdomain + "." + $('#il_platform_domain').val();
        window.location.replace(re_url);
      });
    });
  });
  */
});
