

class Remera_lisa {

	var property talle = 0
	var property color = 'azul'
	var property coloresBasicos = [ 'blanco', 'negro', 'gris' ]

	method costeDeTalle() {
		if (talle > 41) {
			return 100
		} else return 80
	}

	method costeRemera() {
		if (coloresBasicos.any{ unColorBasico => unColorBasico == color }) {
			return self.costeDeTalle()
		} else return (self.costeDeTalle() * 0.10) + self.costeDeTalle()
	}

	method costeRemeraCompleta() {
		return self.costeRemera()
	}

}

class Remera_Bordada inherits Remera_lisa {

	var property hiloColor = []

	method agregarHiloColor(hC) {
		hiloColor.add(hC)
	}

	override method costeRemeraCompleta() {
		if (hiloColor.size() > 1) {
			return self.costeRemera() + (hiloColor.size() * 10)
		} else return self.costeRemeraCompleta() + 20
	}

}

class Remera_Sublimada inherits Remera_lisa {

	var property alto = 0
	var property ancho = 0
	var property tipoAutor = null

	override method costeRemeraCompleta() {
		return self.costeRemera() + (tipoAutor.derechosAutor() + (alto * ancho * 0.5))
	}

}

class Autor {

	var property derechosAutor = 100

}



