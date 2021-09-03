$(document).ready(function() {

	let weatherIcon = {
		'01': '01.svg',
		'02': '02.svg',
		'03': '03.svg',
		'04': '04.svg',
		'09': '09.svg',
		'10': '10.svg',
		'11': '11.svg',
		'13': '13.svg',
		'50': '50.svg'

	}


	$.ajax({
		url: "https://api.openweathermap.org/data/2.5/weather?q=Gwangju&appid=c71c6725042e4d62050f56ebb25a134c&units=metric",
		dataType: "json",
		type: "GET",
		async: "false",
		success: function(resp) {

			console.log(resp);
			console.log("현재온도 : " + resp.main.temp);
			console.log("현재습도 : " + resp.main.humidity);
			console.log("날씨 : " + resp.weather[0].main);
			console.log("상세날씨설명 : " + resp.weather[0].description);
			console.log("날씨 이미지 : " + resp.weather[0].icon);
			console.log("바람   : " + resp.wind.speed);
			console.log("나라   : " + resp.sys.country);
			console.log("도시이름  : " + resp.name);
			console.log("구름  : " + (resp.clouds.all) + "%");
			console.log("시간 : " + resp.dt_txt);


			var $Icon = (resp.weather[0].icon).substr(0, 2);
			var $Temp = Math.floor(resp.main.temp) + "˚C";
			var $City = resp.name.substr(0, 9);
			var $Hum = resp.main.humidity+"%"
			var $weather = resp.weather[0].description
			var $wind = resp.wind.speed+"m/s"
			var $cloud = resp.clouds.all + "%"
			
			


			$('.CurrIcon').append("<img src='images/" + weatherIcon[$Icon] + "' alt='' />");
			$('.CurrTemp').prepend($Temp);
			$('.City').append($City);
			$('.CurrHum').append($Hum);
			$('.Currweather').append($weather);
			$('.Wind').append($wind);
			$('.Cloud').append($cloud);
			
			

		}
	})
});