import bicis.*

class Deposito{
	
	var property bicis = []
	
	method bicisRapidas() = bicis.filter({ b => b.velocidadCrucero() > 25 })
	method marcaBicis() = bicis.map({ b => b.marca() }).asSet()
	method esNocturno() = bicis.all({ b => b.tieneLuz() })
	method tieneBiciParaCarga(peso) = bicis.any({ b => b.carga() > peso })
	
	method biciMasRapida() = self.bicisRapidas().max({ b => b.velocidadCrucero() })
	method marcaMasRapida() = self.biciMasRapida().marca()
	method bicisLargoMayorA(unLargo) = bicis.filter({ c => c.largo() > unLargo })
    method cargaTotalBicisLargas() = self.bicisLargoMayorA(170).sum({ c => c.carga() })
	method cantidadDeBicisSinAccesorios() = bicis.count({ c => c.noTieneAccesorios() })

	method agregarBici(unaBici) = bicis.add(unaBici)
	
	method sonCompanieras(bici) = ((self.marcaBicis()).contains(bici.marca()) and bici.largo() < 10) 
	
	/*
	method sonCompanieras(unaBici) = self.hayBiciIgualMarca(unaBici) and diferenciaDeLargosMenorADiez(unaBici)
	
	method hayBiciIgualMarca(unaBici) = bicis.any({ b => b.marca() == unaBici.marca() })
	
	method bicisDiferenciaDeLargos(unaBici) = (self.biciIgualMarca(unaBici).largo() - unaBici.largo()).abs() < 10
	
	method  biciIgualMarca(unaBici) = bicis.find({ b => b.marca() == unaBici.marca() })
	*/ 	 
}
