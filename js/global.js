// HTML5 placeholder plugin version 0.3
// Enables cross-browser* html5 placeholder for inputs, by first testing
// for a native implementation before building one.
//
// USAGE: 
//$('input[placeholder]').placeholder();

(function($){
  
  $.fn.placeholder = function(options) {
    return this.each(function() {
      if ( !("placeholder"  in document.createElement(this.tagName.toLowerCase()))) {
        var $this = $(this);
        var placeholder = $this.attr('placeholder');
        $this.val(placeholder).data('color', $this.css('color')).css('color', '#aaa');
        $this
          .focus(function(){ if ($.trim($this.val())===placeholder){ $this.val('').css('color', $this.data('color')); } })
          .blur(function(){ if (!$.trim($this.val())){ $this.val(placeholder).data('color', $this.css('color')).css('color', '#aaa'); } });
      }
    });
  };
}(jQuery));

var menuYloc = null;
var previewYloc = null;

// perform JavaScript after the document is scriptable.
$(document).ready(function() {

    /**
     * Setup Tooltips
     */
    // this set's up the sidebar tooltip for the recent contacts
    $('[data-toggle="popover"]').popover({container: 'body', html: true})

    $('[data-toggle="title"]').tooltip({container: 'body'})
    
    try {
      $('.paginate').dataTable();
    } catch(e) {
    }

    $('.tabbed-pane .nav a').click(function (e) {
      e.preventDefault()
      $(this).tab('show')
    });
    
    $('.nav-toggle').click(function(){
      $(this).toggleClass('active');
    });

    /**
     * Setup placeholder for text input
     */
    $('input[placeholder]').placeholder();

    $(document).on('click', '.popover .popover-close', function(){
        $('[data-toggle="popover"]').popover('hide');
        return false;
    });

    // preview pane setup
    $(document).on('click', '.listing > li', function(e){
        if (e.target.className == 'name') return true;
        var url = $(this).find('.more').attr('href');
        if (!$(this).hasClass('current')) {
            $('.preview-pane .preview').animate({left: "-375px"}, 300, function(){
                $(this).animate({left: "0px"}, 500).html('<img src="images/ajax-loader.gif" />').load(url);
            });
        } else {
            $('.preview-pane .preview').animate({left: "-375px"}, 300);
        }
        $(this).toggleClass('current').siblings().removeClass('current');
        return false;
    });
    
    $(document).on('click', '.preview-pane .preview .cancel', function(){
        $('.preview-pane .preview').animate({left: "-375px"}, 300);
        $('.list-view li').removeClass('current');
        return false;
    });
    // preview pane setup end

    // floating menu and preview pane
    if ($('#wrapper > header').length>0) { menuYloc = parseInt($('#wrapper > header').css("top").substring(0,$('#wrapper > header').css("top").indexOf("px")), 10); }
    if ($('.preview-pane .preview').length>0) { previewYloc = parseInt($('.preview-pane .preview').css("top").substring(0,$('.preview').css("top").indexOf("px")), 10); }
    $(window).scroll(function () {
        var offset = 0;
        if ($('#wrapper > header').length>0) {
            offset = menuYloc+$(document).scrollTop();
        }
        if ($('.preview-pane .preview').length>0) {
            offset = previewYloc+$(document).scrollTop()+400>=$('.main-section').height()? offset=$('.main-section').height()-400 : previewYloc+$(document).scrollTop();
            $('.preview-pane .preview').animate({top:offset},{duration:500,queue:false});
        }
    });

    // setup the view switcher
    $('.main-content > header .view-switcher > h2 > a').click(function(){
        $(this).focus().parent().next().fadeIn();
        return false;
    }).blur(function(){
        $(this).parent().next().fadeOut();
        return false;
    });

    // promo closer
    $('#promo .close').click(function(){
        $('#promo').slideUp();
        $('body').removeClass('has-promo');
    });
});
