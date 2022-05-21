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

