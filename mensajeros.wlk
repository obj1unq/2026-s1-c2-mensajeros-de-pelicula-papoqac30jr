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

	method entregarElPaquete() {

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

}

object neo {
	//modela a Neo

}

object saraConnor {
	//modela a Sara Connor

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
       return persona.puedeHacerUnaLlamada()
	}
}