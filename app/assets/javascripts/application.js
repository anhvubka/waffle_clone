// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
$(init);
 	function init()
 	{
		$('#ticketContainerA,#ticketContainerB,#ticketContainerC,#ticketContainerD').sortable({
			 connectWith:'#ticketContainerA,#ticketContainerB,#ticketContainerC,#ticketContainerD',
			 start: function (event, ui) {

            },
            receive : function (event, ui)
            {
                console.log(ui.item[0]);
                console.log(event.target);
            },
            stop: function (event, ui) {
               //console.log("cc");
            }
            /*
             stop : function (event, ui)
             {
               alert("stop "+);
               return true;
             }
             */
		});
 	};