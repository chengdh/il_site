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
});

