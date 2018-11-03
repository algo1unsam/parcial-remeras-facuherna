class DescuentoBordado {

	method descuento(unPedido) {
		return 0
	}

}

class DescuentoRemeralisa {

	method descuento(unPedido) {
		return unPedido.precioBase() * 0.1
	}

}

class DescuentoRemeraSublimada {

	method descuento(unPedido) {
		return unPedido.precioBase() * 0.2
	}

}

