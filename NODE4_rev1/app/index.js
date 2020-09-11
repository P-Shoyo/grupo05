//Importando o módulo Sensors e atribuindo a uma constante para acesso as funções do mesmo.
const sensors = require('./sensors.js')

/*Atribuindo o retorno da função lm35 a variável temperatura.
Exemplo atribuindo valores diferentes de minimo 15 e máximo 18
temperatura = sensors.lm35(15,18)
Os valores padrões de temperatura são min: 18 max: 25*/
temperatura = sensors.lm35(10,15)

/*Utilizando a função console.log() para exibir no terminal o retorno da função,
incrementando com uma string para facilitar a interpretação.*/
console.log('Temperatura: ' + temperatura.toFixed(2))

//Atribuindo o retorno da função trc5000 a variável chave.
chave = sensors.trc5000()

//Exibindo o valor retornado da função na variável.
console.log('Switch: ' + chave)


//Atribuindo o retorno da função ldr a variável ldr.
ldr = sensors.ldr()

//Exibindo o valor retornado da função na variável.
console.log('Luz: ' + ldr)

//Atribuindo o retorno da função dht11 a variável dht11.
/*
Nesta função, é possível definir os valores limites de mínimo e máximo para temperatura e
umidade relativa, através do envio de um objeto como parametro para função.
São os atributos deste objeto: 
- minHum: valor minimo de umidade
- maxHum: valor máximo de umidade
- minTemp: valor máximo de temperatura
- maxTemp: valor minimo de temperatura
Exemplo:
case1 = {minHum: 20 , maxHum: 80, minTemp: 20, maxTemp: 25}
*/
dht11 = sensors.dht11({minHum:50, maxHum:100, minTemp: 18, maxTemp: 23})


//Exibindo o valor retornado da função na variável.

console.log('DHT11 - Umidade: ' + dht11[0])
console.log('DHT11 - Temperatura: ' + dht11[1].toFixed(2))

