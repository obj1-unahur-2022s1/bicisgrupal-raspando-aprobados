import bicis.*


class Deposito{
	
	var property bicis = []
	
	method agregarBici(unaBici) = bicis.add(unaBici)
	
	method bicisRapidas() = bicis.filter({ b => b.velocidadCrucero() > 25 })
	method marcaBicis() = bicis.map({ b => b.marca() }).asSet()
	method esNocturno() = bicis.all({ b => b.tieneLuz() })
	method tieneBiciParaCarga(peso) = bicis.any({ b => b.carga() > peso })
	
	method biciMasRapida() = bicis.max({ c => c.velocidadCrucero() })
	method marcaMasRapida() = self.biciMasRapida().marca()
	method bicisLargoMayorA(unLargo) = bicis.filter({ c => c.largo() > unLargo })
    method cargaTotalBicisLargas() = self.bicisLargoMayorA(170).sum({ c => c.carga() })
	method cantidadDeBicisSinAccesorios() = bicis.count({ c => c.noTieneAccesorios() })
	
	method sonCompanieras(unaBici) = self.hayBiciIgualMarcaYNoEsSiMisma(unaBici) and self.bicisDiferenciaDeLargos(unaBici)
	
	method hayBiciIgualMarcaYNoEsSiMisma(unaBici) = bicis.any({ b => b.marca() == unaBici.marca() }) and self.noEsSiMisma(unaBici)
	
	method bicisDiferenciaDeLargos(unaBici) = (self.biciIgualMarca(unaBici).largo() - unaBici.largo()).abs() < 10
	
	method biciIgualMarca(unaBici) = bicis.find({ b => b.marca() == unaBici.marca() })
	
	method noEsSiMisma(unaBici) = not self.biciIgualMarca(unaBici) == unaBici
	
	method hayParCompanieras() = bicis.any({ b => self.sonCompanieras(b) })
	
}

