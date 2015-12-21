//Fade in animation on all page loads
$(window).load(function () {
    $('#status').fadeOut(); 
    $('#preloader').delay(50).fadeOut('slow');
    $('body').delay(350).css({ 'overflow': 'visible' });
});
//Initialize DatePicker widget
$(function () {
    $(".datepicker").datepicker();
});

//All other functions
$('document').ready(function () {

  //-------------------------------------------------
  //******************Mobile Menu********************
  //-------------------------------------------------
    //Mobile menu animation
    var trigger = $('#hamburger'),
        menu = $('.menu-list'),
        isClosed = true;

    trigger.click(function () {
        burgerTime();
    });
    //Mobile Nav Animation
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
    //Reveal "Reports" drop down list
    $('.add-report .report-title').click(function () {
      $('.report-list-section').slideToggle(300);
    });

    //When value from above list ^^ is selected - display the div of a report matching selected value
    $('.project-page .report-group').hide(); //On default hide
    $('#ddlProjectType').on('click', function () {
      var reveal = $(this).val();
      console.log(reveal);
      $('.report-group').hide(); //hide all other reports
      $('#' + reveal).show(); // display matching report div
    });

  //-------------------------------------------------
  //*****************Main Page***********************
  //-------------------------------------------------

    //Home Page - Project Information Cards 
    //-- Display Message if database fields are empty
    $(".client-listings span.highlight-change").each(function () {
      if ($(this).text() == "" || $(this).text().length <= 1) { $(this).text("This field appears to be empty! :O") }
    });
   
    $('.view-all').click(function () {
      $(".project-instance").fadeIn('slow'); // Display All Project Cards
    })

    //Sort By Alphabetical Buttons
    $('button.btn-sort').click(function () {
      $('.project-instance').fadeIn('fast'); // if no matching values found, show all divs
      var attrr = $(this).attr('value'); //get value of button clicked
      $('h2.project-title').each(function () { //loop through each project title
        var $thisText = $(this).text().toLowerCase();
        //Check if first char of project name matches any of the values in selected button
        if ($thisText.charAt(0) == attrr.charAt(0) || $thisText.charAt(0) == attrr.charAt(1) || $thisText.charAt(0) == attrr.charAt(2) || $thisText.charAt(0) == attrr.charAt(3) || $thisText.charAt(0) == attrr.charAt(4) || $thisText.charAt(0) == attrr.charAt(5)) {
          $(".project-instance").hide();//hide all other projects
          $(this).parent().parent('.project-instance').fadeIn('fast');//display projects that match this range
        }
      })
    })

    $('#ContentPlaceHolder2_ddlClientName').change(function () {
      $('.project-instance').show();//show all on default
      var valueThing = $(this).val();//get value of selected index
      $('.project-instance').each(function () {//loop through each project
        if ($(this).attr('id') == valueThing) {//the value is stored in the divs id - see if id matches the value
          $('.project-instance').fadeOut('fast');//hide everything else
          $(this).fadeIn('slow');//show matching entry
        }
      })
    })

    subStringSearch('#ContentPlaceHolder2_ddlCityProjectFilter , #ContentPlaceHolder2_ddlClientContact');
    
    //Search For Substrings Within Project Divs
    function subStringSearch(thisDiv) {
      $(thisDiv).change(function () {
        $('.project-instance').show();
        var childString = $(this).val();//value of ddl as a string
        $('.project-instance').each(function () {
          var mainString = $(this).children().text();
          var stringSoln = mainString.indexOf(childString) > -1; // search for the substring in each div
          if (stringSoln) {
            $('.project-instance').fadeOut('fast');
            $(this).fadeIn('slow')//show matching entry
          }
        })
      })
    }

  //-------------------------------------------------
  //**************New Project Page*******************
  //-------------------------------------------------
  //Get Todays Date -- For report started field 
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth() + 1;
    var yyyy = today.getFullYear();
    var todaysBidDate = mm + '/' + dd + '/' + yyyy;
    function toDay() {
      return mm + '/' + dd + '/' + yyyy;
    }
    $('#ContentPlaceHolder2_txtBidDate').val(toDay()); // set the above functions value to textbox
});