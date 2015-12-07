$(window).load(function () { 
    $('#status').fadeOut(); 
    $('#preloader').delay(50).fadeOut('slow');
    $('body').delay(350).css({ 'overflow': 'visible' });
});

$('document').ready(function () {
    
  //Mobile menu animation
    var trigger = $('#hamburger'),
        menu = $('.menu-list'),
        isClosed = true;

    trigger.click(function () {
        burgerTime();
    });

    function burgerTime() {
        if (isClosed == true) {
            isClosed = false;
            trigger.removeClass('is-closed');
            trigger.addClass('is-open');
            menu.show();
            $('body').css('overflow', 'hidden');
        }
        else {
            isClosed = true;
            trigger.removeClass('is-open');
            trigger.addClass('is-closed');
            menu.hide();
            $('body').css('overflow', 'auto');
        }
    }
  //Mobile Menu Sub menu toggling
    $('.sub-mobile').hide();
    $('.sup-mobile .a').click(function () {
      $('.sub-mobile').slideUp(300, 'swing');
      $(this).siblings('.sub-mobile').slideToggle(500, 'swing');
    });
    
  //-------------------------------------------------
  //*************Project Instance Page****************
  //-------------------------------------------------
    //Reveal "Add new report" drop down list
    $('.add-report .report-title').click(function () {
      $('.report-list-section').slideToggle(300);
    });

  //When value from above list ^^ is selected - display the hidden div of a report matching selected value
    $('.project-page .report-group').hide();
    $('#ddlProjectType').on('click', function () {
      var reveal = $(this).val();
      $('.report-group').hide();
      $('#' + reveal).show();
    });
    
  //Get Existing client input into textbox
    $('#ContentPlaceHolder2_ddlExistingClientBusinessDesign').on('click', function () {
      var clientName = $(this).val();
      $('#ContentPlaceHolder2_txtClientBusinessDesign').val(clientName);
    })

    $('.btn-new-row').click(function () {
      var theParent  = $(this).parent().parent('.report-wrapper'),//shortcut reference
          $theClonee = $(this).parent().parent('.report-wrapper').clone(); //copy all html of parent 
      $theClonee.removeClass('report-wrapper');//also remove the extra padding
      $(this).hide();//hide btn just clicked
      theParent.append($theClonee);//throw copied html at bottom of div
    });
});