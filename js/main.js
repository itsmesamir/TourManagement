jQuery(document).ready(function(){

	"use strict";

	$('#slider-carousel').carouFredSel({

		responsive:true,
		width: '100%',
		circular:true,
		scroll:{
			items:1,
			duration: 500,
			pauseOnHover: true
		},
		auto:true,
		items:{
			visible:{
				min:1,
				max:1
			},
			height:"variable"
		},
		pagination:{
			container:".sliderpager",
			anchorBuilder: false
		}
	});
	$(window).scroll(function(){
		var top = $(window).scrollTop();
		if(top>=60){
			$("header").addClass('secondary-dark-blue-bg');

		}
		else{
			if($("header").hasClass('secondary-dark-blue-bg')){
				$("header").removeClass('secondary-dark-blue-bg');
			}
		}
	});
	$('.skillbar').each(function(){
		$(this).find('.skillbar-bar').animate({
			width:$(this).attr('data-percent')
		},6000);
	});
	
	$('.skillbar').each(function(){
		$(this).find('.skill-bar-percent').animate({
			left:$(this).attr('data-percent')
		},6000);
	});
	
	$('.skillbar').each(function(){
		$(this).find('.skill-bar-percent').text($(this).attr('data-percent'));
	});

	// caraousel for portfolio

	$('.portfolio-carousel').carouFredSel({

		responsive:true,
		width: '100%',
		circular:true,
		prev: '#prev',
		next: '#next',
		scroll:{
			items:1,
			duration: 500,
			pauseOnHover: true
		},
		auto:true,
		items:{
			visible:{
				min:1,
				max:4
			},
			height:"variable"
		}
	});
	$('.aboutme-carousel').carouFredSel({

		responsive:true,
		width: '100%',
		circular:true,
		scroll:{
			items:1,
			duration: 500,
			pauseOnHover: true
		},
		auto:true,
		items:{
			visible:{
				min:1,
				max:1
			},
			height:"variable"
		},
		pagination:{
			container:".aboutpager",
			anchorBuilder: false
		}
	});
	$('.interest-carousel').carouFredSel({

		responsive:true,
		width: '100%',
		circular:true,
		prev: '#interest-prev',
		next: '#interest-next',
		scroll:{
			items:1,
			duration: 500,
			pauseOnHover: true
		},
		auto:true,
		items:{
			visible:{
				min:1,
				max:4
			},
			height:"variable"
		}
	});
	$('#menu').slicknav({
		label:'',
	})

	
	$(window).stellar();

	// for smooth scrooling

	$('a').smoothScroll();

	// contact form

});