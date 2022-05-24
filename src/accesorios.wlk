import bicis.*

object  farolito{
	
	method peso() = 0.5
	method carga() = 0
	method esLuminoso() = true	
	
}

class  Canasto{
	var property volumen = 0
	
	method peso() = volumen / 10
	method carga() = volumen * 2
	method esLuminoso() = false	
	
}

class  Morral{
	var property largo = 0
	var property ojoDeGato = true
	
	method peso() = 1.2
	method carga() = largo / 3
	method esLuminoso() = ojoDeGato	
		
}

/*
 Respuesta a la pregunta del punto 5:
 
 *Se deberia Agregar y/o modificar: 
 
 Un nuevo tipo de accesorio como portaBotellas y lucesParaLaRueda
 respetando los mismos nombres de los metodos en los tipos anteriores.

 En caso del tipo canasto podriamos utilizar el ya definido agregando
 solamente un var property "ubicacionDelantera" que indique si el canasto 
 esta en la parte delantera y/o trasera de la bicicleta. Por ejemplo:
 
 class  Canasto{
	var property volumen = 0
	var property ubicacionDelantera = true

	method peso() = volumen / 10
	method carga() = volumen * 2
	method esLuminoso() = false	
}

 En caso de agregar dicho accesorio modificado en los test deberiamos
 agregarle el valor "false" si lo queremos en la parte trasera. Por ejemplo:
  
 bici2.agregarAccesorio(new Canasto(volumen=8, ubicacionDelantera = false))
  
 Dicho esto se relaciona el concepto de contrato y/o polimorfismo porque
 al tener que definir un nuevo tipo tendria que respetarse el contrato
 usando los mismos nombres que se le han creado a los metodos y que estos
 sepan responder a los mismos mensajes. 
*/

