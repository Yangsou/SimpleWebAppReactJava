/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function(){

    $('.img-detail').on('mousemove', function(e){
        var posX = event.offsetX ? (event.offsetX) : event.pageX - this.offsetLeft;
        var posY = event.offsetY ? (event.offsetY) : event.pageY - this.offsetTop;
        $('.detail-image_zoom').css({
          'background-position': (-posX*2.6)+"px "+(-posY*2.8)+"px",
          'display': 'block'
        });
    }).on('mouseleave', ()=>{
        $('.detail-image_zoom').css('display', 'none');
    });

});