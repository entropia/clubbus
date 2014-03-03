$(function() {
	function do_update() {
		$.ajax({
			type: "GET",
			url: "http://vaporlight.intranet.entropia.de:7535/api/backlight",
			dataType: 'jsonp',
			success: function(data) {
				$("#bookmark").attr("href", "http://vaporlight.intranet.entropia.de:8080/set_color?color=" + data);
				$("#picker").colorpicker("setColor", "#" + data);
			},
			jsonp: 'jsonp'
		});

		$.ajax({
			type: "GET",
			url: "http://vaporlight.intranet.entropia.de:7535/api/dimmer",
			dataType: 'jsonp',
			success: function(data) {
				var value = parseInt(data, "16") / 256;
				$("#dimmer-vaporlight").slider("option", "value", value);
			},
			jsonp: 'jsonp'
		});

		$.map(["hauptraum", "kueche"], function(raum, i) {
			$.get("/api/dali/" + raum, function(data) {
				if(data.success) {
					var value = data.msg.replace(/\s/g, '');

					if(value > 0) {
						value -= 84;
					}

					$("#dali-" + raum).slider("option", "disabled", false);
					$("#dali-" + raum).slider("option", "value", value);
				} else {
					$("#dali-" + raum).slider("option", "disabled", true);
				}
			});
		});
			
		setTimeout(do_update, 10000);
	}

	$(document).ready(function() {
		$("#picker").colorpicker({
			parts: ['map', 'bar', 'rgb', 'hsv', 'preview'],
			select: function(event, data) {
				$("#bookmark").attr("href", "http://vaporlight.intranet.entropia.de:8080/set_color?color=" + data.formatted);
				$.ajax({
					type: "POST",
					url: "http://vaporlight.intranet.entropia.de:7535/api/backlight",
					data: data.formatted,
					contentType: "text/plain; charset=UTF-8",
				});
			}
		});

		$("#dali-hauptraum").slider({
			min: 0,
			max: 170,
			step: 1,
			slide: function(event, ui) {
				$(this).find( ".ui-slider-handle" ).text( ui.value );
			},
			change: function(event, ui) {
				$(this).find( ".ui-slider-handle" ).text( ui.value );
			},
			stop: function(event, ui) {
				var value = (ui.value == 0) ? 0 : (84 + ui.value);
				$.post("/api/dali/hauptraum", "" + value);
			}
		});

		$("#dali-kueche").slider({
			min: 0,
			max: 170,
			step: 1,
			slide: function(event, ui) {
				$(this).find( ".ui-slider-handle" ).text( ui.value );
			},
			change: function(event, ui) {
				$(this).find( ".ui-slider-handle" ).text( ui.value );
			},
			stop: function(event, ui) {
				var value = (ui.value == 0) ? 0 : (84 + ui.value);
				$.post("/api/dali/kueche", "" + value);
			}
		});

		$("#dimmer-vaporlight").slider({
			min: 0,
			max: 255,
			step: 1,
			change: function(event, ui) {
				$(this).find( ".ui-slider-handle" ).text( ui.value );
			},
			slide: function(event, ui) {
				$(this).find( ".ui-slider-handle" ).text( ui.value );

				var hex = ui.value.toString(16);
				$.ajax({
					type: "POST",
					url: "http://vaporlight.intranet.entropia.de:7535/api/dimmer",
					data: hex+hex,
					contentType: "text/plain; charset=UTF-8",
				});
			}
		});


		do_update();
	});
});
