object sistema {
	//modela el sistema de paqueteria
	var paquetePagado = true
    var personaEncargadaDeLaEntrega = jeanGray
	var destinoActual = puenteDeBrooklyn

    method puedeEntregarElPaqueteEn(persona , paquete , destino) {
		//indica si la persona puede entregar el paquete en el destino indicado
		return self.elPaqueteEstaPago() and self.puedeEntregarEn(persona , destino)
	}

	method puedeEntregarEn(persona , destino) {
    //indica si la persona puede entregar en el destino
	return destino.cumpleRestricionesDe(persona) 
	}

	method elPaqueteEstaPago() {
		//indica si el paquete esta pago
      return paquetePagado
	}

	method paquetePagado(_paquetePagado) {
		//modifica el estado del paquete 
		paquetePagado = _paquetePagado
	}

	method destino() {
		//retorna el destino
		return destinoActual
	}

	method destino(_destino) {
		//cambia el destino
		destinoActual = _destino
	}

	method personaEncargadaDeLaEntrega() {
		//retorna la persona
		return personaEncargadaDeLaEntrega
	}

	method personaEncargadaDeLaEntrega(_personaEncargadaDeLaEntrega) {
		//cambia la persona
		personaEncargadaDeLaEntrega = _personaEncargadaDeLaEntrega
	}
}

object jeanGray {
	//modela a Jean Gray
	const peso = 65
	const puedeLlamar = true

	method peso() {
		//retorna el peso de Jean Gray
		return peso
	}

	method puedeLlamar() {
		//indica si Jean Gray puede llamar , siempre sera verdadero debido a sus poderes.
		return puedeLlamar
	}
}

object neo {
	//modela a Neo
	const peso = 0
	var puedeLlamar = true

	method peso() {
		//retorna el peso del canchero de neo
		return peso
	}

	method puedeLlamar() {
		//indica si el canchero de neo puede llamar con su celular
		return puedeLlamar
	}

	method puedeLlamar(_puedeLlamar) {
		//cambia el valor del canchero de neo ideal cuando el canchero se queda sin creditos o cuando recargue creditos.
		puedeLlamar = _puedeLlamar
	}
}

object saraConnor {
	//modela a Sara Connor
	var pesoDeSara = 0
	var vehiculoActual = moto 
	const puedeLlamar = false

	method pesoDeSara(_pesoDeSara) {
		pesoDeSara = _pesoDeSara
	}

	method puedeLlamar() {
		return puedeLlamar
	}

	method vehiculoActual(_vehiculoActual) {
		vehiculoActual = _vehiculoActual
	}

	method peso() {
		return pesoDeSara + vehiculoActual.peso()
	}
}

object puenteDeBrooklyn {
	//modela la ubicacion del puente de brooklyn
	method cumpleRestricionesDe(persona) {
        return 1000 > persona.peso()
	}
}

object laMatrix {
    //modela la ubicaciond e la matrix
	method cumpleRestricionesDe(persona) {
       return persona.puedeLlamar()
	}
}

object moto {

}

object camion {
	
}