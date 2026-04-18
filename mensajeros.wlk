object sistema {
	//modela el sistema de paqueteria
	var paquetePagado = true
    var personaEncargadaDeLaEntrega = jeanGray
	var destinoActual = puenteDeBrooklyn

    method puedeEntregarElPaqueteEn(persona , paquete , destino) {
		//indica si la persona puede entregar el paquete en el destino indicado
		if (self.elPaqueteEstaPago() and self.puedeEntregarEn(persona , destino)) {
			self.entregarElPaquete(paquete)
		}
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
		return destinoActual
	}

	method destino(_destino) {
		destinoActual = _destino
	}

	method personaEncargadaDeLaEntrega() {
		return personaEncargadaDeLaEntrega
	}

	method personaEncargadaDeLaEntrega(_personaEncargadaDeLaEntrega) {
		personaEncargadaDeLaEntrega = _personaEncargadaDeLaEntrega
	}
}

object jeanGray {

}

object neo {

}

object saraConnor {

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