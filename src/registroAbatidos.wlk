object registroAbatidosCOD {
	const cantDeAbatidos = []
	
	const diasDeAbatidos = []
	
	method agregarAbatidosDia(cantidad, dia) {
		cantDeAbatidos.add(cantidad)
		diasDeAbatidos.add(dia)
	}
	
	method agregarAbatidosVariosDias(cantidades,dias) {
		cantDeAbatidos.addAll(cantidades)
		diasDeAbatidos.addAll(dias)
	}
	
	method eliminarElRegistroDelDia(dia) {
		// utiizo el indice, pero remuevo el elemento get(indice)
		diasDeAbatidos.remove(dia)
		diasDeAbatidos.get()
	}
	
	
	//consultas
	
	method cantidadDeRegistrados() {
		return cantDeAbatidos.size()
	}
	
	method estaVacioElRegistro() {
		if (cantDeAbatidos.isEmpty() and diasDeAbatidos.isEmpty()) {return "Esta vacio"} else {return "teieneun elemento"}
	}
	
}

