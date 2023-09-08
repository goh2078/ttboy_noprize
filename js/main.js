(function ($) {

  /* quiz progress bar */
  let lastKnownScrollPosition = 0;
  let ticking = false;
  document.addEventListener('scroll', function(e) {
      lastKnownScrollPosition = window.scrollY;
    
      if (!ticking) {
        window.requestAnimationFrame(function() {
          if ( window.scrollY > 4000 ) {
              $('.bar1').addClass('active');
          } else {  $('.bar1').removeClass('active');  }
          if ( window.scrollY > 5500 ) {
              $('.bar2').addClass('active');
          } else {  $('.bar2').removeClass('active');  }
          if ( window.scrollY > 8060 ) {
            $('.bar3').addClass('active');
          } else {  $('.bar3').removeClass('active');  }
          if ( window.scrollY > 9560 ) {
            $('.bar4').addClass('active');
          } else {  $('.bar4').removeClass('active');  }
          ticking = false;
        });
        ticking = true;
      }
  });

  /* result popup */
  if($('body').hasClass('male-respondent')) {
    let poped = 0;
    $(window).scroll(function() {
        var hT = $('#result-footer').offset().top,
        wH = $(window).height(),
        wS = $(this).scrollTop();
        if (poped == 0) {
          if (wS > (hT+240-wH) && wS < (hT+440-wH)){
            $.colorbox({href:"#result-notice",inline:true,width:"90%",maxWidth:"400px"});
            poped = 1;
          }
        }
    });
  }
  if($('body').hasClass('page-quiz')) {
    $(window).scroll(function() {
        var hT = $('.progress-bar-wrapper').offset().top,
        wH = $(window).height(),
        wS = $(this).scrollTop();
          if (wS > hT){
            $('.progress-bar-wrapper').addClass('active');
          }
    });
  }
  $(document).ready(function () {

    $('input#webform-submit').click(function(event){
      $('.info-check').each(function(){
        if($(this).prop('checked') === false) {
          event.preventDefault();
          let infoname = $(this).attr('data-name');
          alert('請閱讀'+infoname+'，並勾選我已閱讀');
        }
      });
    });

    if($('body').hasClass('page-quiz') || $('body').hasClass('page-survey') || $('body').hasClass('page-survey')) {
      $("form").validate({
        errorPlacement: function(error, element) {
          error.insertBefore(element);
        }
      });
    }

    jQuery.extend(jQuery.validator.messages, {
      required: '本項目必填',
    });

	});
    
    
})(jQuery);



