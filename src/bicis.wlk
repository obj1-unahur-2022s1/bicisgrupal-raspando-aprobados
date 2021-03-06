import accesorios.*

class Bicicleta{
	
	var accesorios = []
	var property rodado = 0
	var property largo = 0
	var property marca = ""
	
	
	method altura() = rodado * 2.5 + 15
	method velocidadCrucero()= if(largo > 120){rodado + 6}else{rodado + 2}
	method carga() = accesorios.sum({ c => c.carga() })
	method peso() = self.sumaRodado() + self.sumaTotalAccesorios()  
	method sumaRodado() = rodado / 2
	method sumaTotalAccesorios() = accesorios.sum({ c => c.peso() })
	method tieneLuz() = accesorios.any({ c => c.esLuminoso() })
	method cantidadDeAccesorioslivianos() = accesorios.count({ c => c.peso() < 1 })
	method agregarAccesorio(accesorio) = accesorios.add(accesorio)
	method noTieneAccesorios() = accesorios.isEmpty()
	
	//Revisar si el metodo de las bicicletas compañeras va aca.
}