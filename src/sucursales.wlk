import remeras.*
import tiposDescuentos.*

class Sucursal {

	var property cantidadMinimaDescuento = 0
	var property tipoRemera = null
	var property pedidosRecibidos = []
	var property tipoDescuento = null
	var property precioFinal = 0

	method agregarPedidosRecibidos(p) {
		pedidosRecibidos.add(p)
	}

	method totalFacturado() {
		pedidosRecibidos.sum{ unPedido => unPedido.precioFinal()}
	}

	method aplicaDescuento(unPedido) {
		return unPedido.cantRemeras() > cantidadMinimaDescuento
	}

	method descuento(unPedido) {
		if (self.aplicaDescuento(unPedido)) {
			return tipoDescuento.descuento(unPedido)
		} else return 0
	}

	method precio(unPedido) {
		precioFinal = unPedido.precioBase() - self.descuento(unPedido)
	}

}

