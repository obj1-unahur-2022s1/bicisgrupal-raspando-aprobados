import bicis.*

class Deposito{
	
	var property bicis = []
	
	method bicisRapidas() = bicis.filter({ b => b.velocidadCrucero() > 25 })
	method marcaBicis() = bicis.map({ b => b.marca() }).asSet()
	method esNocturno() = bicis.all({ b => b.tieneLuz() })
	method tieneBiciParaCarga(peso) = bicis.any({ b => b.carga() > peso })
	
	method biciMasRapida() = bicis.max({ b => b.velocidadCrucero() })
	method marcaMasRapida() = self.biciMasRapida().marca()
}