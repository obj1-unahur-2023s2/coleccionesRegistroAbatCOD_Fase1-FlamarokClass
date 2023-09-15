object registroAbatidosCOD {
	const registro = []

	
	method agregarAbatidosDia(cantidad, dia) {
		if(self.yaEstaElDia(dia)){
			self.error("Ya existe el dia")
		} 
		registro.add([cantidad,dia]) //agrego una lista dentro de la lista "Registro"
	}
	
	method agregarAbatidosVariosDias(registrosAbatidos) {
		registro.addAll([registrosAbatidos])
		
	}
	
	method dia(regist) = regist.get(1) // indica que es el 2do elemento del par cantidad-dia del registro (del 0 al 1)
	
	method cantidad(reg) = reg.first() // indica que es el primer elemento del par cantidad-dia o re.get(0)
	
	method yaEstaElDia(dia) {
		return registro.any({r => self.dia(r) == dia})
	}
	
	method registroDia(dia) {
		return registro.find({r => self.dia(r) == dia}) // devolverá el elemento, que es una lista = una dupla del registro
	}
	
	method eliminarElRegistroDelDia(dia) {
		if( not self.yaEstaElDia(dia)){
			self.error("El dia no esta en el registro")
		}
		registro.remove(self.registroDia(dia))	
	}
	
	method eliminarLosRegistrosDeDias(registrosDias) {
		const listaDeDias = [registrosDias]
		if (not listaDeDias.all( {e => self.yaEstaElDia(e)} ) ) { 
// el valor del all será falso si encuentra un dia que no esté, y al negar todo el resultado, dará verdadero y entrará dentro del if
			self.error("Algun dia de la lista no esta incluido en el registro")
		}
		listaDeDias.forEach({nDia => self.eliminarElRegistroDelDia(nDia)}) // va a fallar si un dia agregado no exista		
	}
	
	
	//Consultas
	
	method cantidadDeDiasRegistrados() {
		return registro.size()
	}
	
	method estaVacioElRegistro() {
		return registro.isEmpty()
	}
	
	method algunDiaAbatio(cantidad) {
		return registro.any({r => self.cantidad(r) == cantidad})
	}
	
	method primerValorDeAbatidos() {
		return self.cantidad(registro.get(0)) // da la cantidad de abatidos de la lista 1 (indice 0) del registro
	}
	
	method ultimoValorDeAbatidos() {
		return self.cantidad(registro.last())
	}
	
	method maximoValorDeAbatidos() {
		return self.cantidad(registro.max())
	}
	
	method totalAbatidos() {
		return registro.sum({r  => self.cantidad(r)})
	}
	
	method cantidadDeAbatidosElDia(dia) {
		return self.cantidad(self.registroDia(dia))
	}
	
	method ultimoValorDeAbatidosConSize() {
		return self.cantidad(registro.get(self.cantidadDeDiasRegistrados()-1)) 
		// registro.get(self.cantidadDeDiasRegistrados()-1)esto retorna el ultimo elemento
		// self.cantidad(retorna la cantidad de abatidos del ultimo elemento)
	}
	
	method diasConAbatidosSuperioresA(cuanto) {
	
	}
	
	method valoresDeAbatidosPares() {
		
	}
	
	method elValorDeAbatidos(cantidad) {
		
	}
	
	method abatidosSumando(cantidad) {
		
	}
	
	method abatidosEsAcotada(n1,n2) {
		
	}
	
	method algunDiaAbatidoMasDe(n1,n2) {
		
	}
	
	method todosLosDiasAbatioMasDe(cantidad) {
		
	}
	
	method cantidadAbatidosMayorALaPrimera() {
		
	}
	
	method esCrack() {
		return (1..registro.size()-1).all({r => self.cantidad(registro.get(r) > self.cantidad(registro.get(r-1) ) )})
		// (1..registro.size()-2).all({r => self.cantidad(registro.get(r) < self.cantidad(registro.get(r+1) ) )})
	}
	
}

	
