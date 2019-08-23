
object alpiste {
	method energiaPorGramo() { return 4 }
}

object mondongo {
	method energiaPorGramo() { return 100 }
}

// comida que esta fallada
object bigMac {
	method energiaPorGramo() { return 2 }
}

/*
 * el alcaucil da 20 joules por gramo
 */ 
object alcaucil {
	method energiaPorGramo() { return 20 }
}

/*
 * el sorgo da 9 joules por gramo
 */ 
object sorgo {
	method energiaPorGramo() { return 9 }
}

object mijoLeticia {
	var estado = "seco"
	
	method energiaPorGramo() {
		if (estado == "seco") { 
			return 20
		} else {
			return 15
		}
	}
	
	method mojarse() {
		estado = "mojado"
	}
	
	method secarse() {
		estado = "seco"
	}
}

object mijoLuciano {
	var joules = 20
	
	method energiaPorGramo() {
		return joules
	}
	
	method mojarse() {
		joules = 15
	}
	
	method secarse() {
		joules = 20
	}
	
	method esNutritivo() { return joules == 20 }
}

object mijoFede {
	var estaSeco = true
	
	method energiaPorGramo() {
		if (estaSeco) { 
			return 20
		} else {
			return 15
		}
	}
	
	method mojarse() {
		estaSeco = false
	}
	
	method secarse() {
		estaSeco = true
	}	
	
	method esNutritivo() { return estaSeco }
}



object canelonesLuciano {
	var joules = 20
	
	method energiaPorGramo() {
		return joules
	}
	
	method ponerSalsa() {
		joules += 5
	}
	
	method ponerQueso() {
		joules += 7
	}
	
	method sacarSalsa() {
		joules -= 5
	}	
	
	method sacarQueso() {
		joules = joules - 7
	}		
}

object canelonesLeonel {
	var tieneSalsa = false
	var tieneQueso = false
	
	method energiaPorGramo() {
		if (tieneSalsa && tieneQueso) {
			return 32
		} else if (tieneSalsa) {
			return 25
		} else if (tieneQueso) {
			return 27
		} else {
			return 20
		}		
	}
	
	method ponerSalsa() {
		tieneSalsa = true
	}
	
	method ponerQueso() {
		tieneQueso = true
	}
	
	method sacarSalsa() {
		tieneSalsa = false
	}	
	
	method sacarQueso() {
		tieneQueso = false
	}			
}

object canelonesFede {
	var tieneSalsa = false
	var tieneQueso = false
	
	method energiaPorGramo() {
		var energia = 20
		if (tieneSalsa) {
			energia += 5
		} 
		if (tieneQueso) {
			energia += 7
		}
		return energia	
	}
	
	method ponerSalsa() { tieneSalsa = true }
	
	method ponerQueso() { tieneQueso = true }
	
	method sacarSalsa() { tieneSalsa = false }	
	
	method sacarQueso() { tieneQueso = false }			
}