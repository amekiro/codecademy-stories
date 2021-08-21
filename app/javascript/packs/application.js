// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require home

//import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
require("jquery")

//Rails.start()
Turbolinks.start()
ActiveStorage.start()

$(".opcl").on("click", function() {
    $(".opcl").removeClass("hide");
    $(this).addClass("hide");

    if ($(this)[0].id == "open") {
        // Expand
        $("nav").animate({left: 0 }, 'slow', function() {});
    } else {
        // Close
        $("nav").animate({left: -300 }, 'slow', function() {});
    }
})