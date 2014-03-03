$(function() {

	function do_update() {
		$("div.btn-group[data-enum-register]").each(function() {
			var group = $(this);
			var reg = group.attr("data-enum-register");

			$.get("/api/verstaerker/" + reg, function(data) {
				data = data.msg.replace(/\s/g, '');
				$("button[value='" + data + "']", group).addClass("active");
			});
		});

		$.get("/api/verstaerker/volume", function(data) {
			var value = data.msg.replace(/\s/g, '');

			$("#volume").slider("option", "value", value);
		});

		setTimeout(do_update, 10000);
	}

	$(document).ready(function() {
		$("div.btn-group[data-enum-register]").each(function() {
			var reg = $(this).attr("data-enum-register");

			$("button", $(this)).each(function() {
				var button = $(this);

				button.on("click", function() {
					$.post("/api/verstaerker/" + reg, "" + button.val());
				});
			});
		});

		$("#volume").slider({
			min: 0,
			max: 100,
			step: 5,
			slide: function(event, ui) {
				$(this).find( ".ui-slider-handle" ).text( ui.value );
			},
			change: function(event, ui) {
				$(this).find( ".ui-slider-handle" ).text( ui.value );
			},
			stop: function(event, ui) {
				$.post("/api/verstaerker/volume", "" + ui.value);
			}
		});

		do_update();
	});
});
