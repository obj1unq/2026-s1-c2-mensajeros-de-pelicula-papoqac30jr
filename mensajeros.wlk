object sistema {
	//modela el sistema de paqueteria
	var paquetePagado = true
    var personaEncargadaDeLaEntrega = jeanGray
	var destinoActual = puenteDeBrooklyn

    method puedeEntregarElPaqueteEn(persona , paquete , destino) {
		//indica si la persona puede entregar el paquete en el destino indicado
		if (self.elPaqueteEstaPago() and self.puedeEntregarEn(paquete , persona , destino)) {
			self.entregarElPaquete(paquete)
		}
	}

	method puedeEntregarEn(paquete , persona , destino) {
    //indica si la persona puede entregar en el destino
	return persona.cumpleRestricionesDe(paquete) and destino.cumpleRestricionesDe(paquete)
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
	method cumpleRestricionesDe(paquete) {
        return 1000 > paquete.peso()
	}
}

object laMatrix {
    //modela la ubicaciond e la matrix
	method cumpleRestricionesDe(paquete) {

	}
}