//Gráfico de temperatura

var context2 = document.getElementById("chart-humidity").getContext("2d");
context2.canvas.width = 1000;
context2.canvas.height = 300;

var humidity = {
	type: 'line',
	data: {
		datasets: [{
			label: "Armazém 1",
			// type: 'horizontalBar',
			fill: false,
			borderColor: ['#FBFF47'],
			backgroundColor: ['#FBFF47']
		},
	]
	},
	options: {
		scales: {
			xAxes: [{
				//type: 'value',
				distribution: 'series',
				ticks: {
					beginAtZero: true
				}
			}],
			xAxes: [{
				display: true,
				labelString: 'Tempo'
			}],
			yAxes: [{
				scaleLabel: {
					display: true,
					labelString: 'Umidade'
				},
				ticks: {
					beginAtZero: true,
					maxRotation: 3,
					max: 55,
				}
			}]
		},
		animation: {
			duration: 0
		}
	}
};

var chartHumidity = new Chart(context2, humidity);

//Função para obter os dados de temperatura do server
//Seria mais interessante fazer isso com WebSocket, porém para fins academicos, os dados serão atualizados via HTTP

//Esse atributo dentro do contexto serve para saber qual foi o último índice processado, assim eliminado os outros elementos na
//hora de montar/atualizar o gráfico
this.lastIndexTempHumidity = 0;
this.timeHumidity = 0;

function get_dataHumidity() {

	var http = new XMLHttpRequest();
	http.open('GET', 'http://localhost:3000/api/humidity', false);
	http.send(null);

	var obj = JSON.parse(http.responseText);
	if (obj.data.length == 0) {
		return;
	}

	var _lastIndexTemp = this.lastIndexTempHumidity;
	this.lastIndexTempHumidity = obj.data.length;
	listTemp = obj.data.slice(_lastIndexTemp);

	listTemp.forEach(data => {

		//Máximo de 60 itens exibidos no gráfico
		// if (chartHumidity.data.labels.length == 1 && chartHumidity.data.datasets[0].data.length == 1) {
			chartHumidity.data.labels.shift();

			chartHumidity.data.datasets[0].data.shift();
			// chartHumidity.data.datasets[1].data.shift();
			// chartHumidity.data.datasets[2].data.shift();
			// chartHumidity.data.datasets[3].data.shift();
			// chartHumidity.data.datasets[4].data.shift();
			// chartHumidity.data.datasets[5].data.shift();
			// chartHumidity.data.datasets[6].data.shift();
			// chartHumidity.data.datasets[7].data.shift();
			// chartHumidity.data.datasets[8].data.shift();
			// chartHumidity.data.datasets[9].data.shift();

		// }

		chartHumidity.data.labels.push(this.time++);

		chartHumidity.data.datasets[0].data.push(parseFloat(data));
		// chartHumidity.data.datasets[1].data.push(dados_aleatorios(data));
		// chartHumidity.data.datasets[2].data.push(dados_aleatorios(data));
		// chartHumidity.data.datasets[3].data.push(dados_aleatorios(data));
		// chartHumidity.data.datasets[4].data.push(dados_aleatorios(data));
		// chartHumidity.data.datasets[6].data.push(dados_aleatorios(data));
		// chartHumidity.data.datasets[7].data.push(dados_aleatorios(data));
		// chartHumidity.data.datasets[8].data.push(dados_aleatorios(data));
		// chartHumidity.data.datasets[9].data.push(dados_aleatorios(data));

		chartHumidity.update();
	});

}

function dados_aleatorios(data) {

	var numeros_aleatorios = Number((Math.random() * 5) + 3);
	numeros_aleatorios = numeros_aleatorios.toFixed(2);
	var novo_data = Number(numeros_aleatorios) + Number(data)

	console.log(novo_data)
	return novo_data > 55 ? parseFloat(data) : parseFloat(novo_data);

}

get_dataHumidity();


setInterval(() => {
	get_dataHumidity();
}, 1000);