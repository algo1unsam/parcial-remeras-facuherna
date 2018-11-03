class EmpresaDeRemeras {

	var property pedidos = []
	var property sucursal = []

	method agregarPedido(unPedido) {
		pedidos.add(unPedido)
	}

	method agregarSucursal(s) {
		sucursal.add(s)
	}

	method totalFacturado() {
		pedidos.sum{ unPedido => unPedido.precioFinal(self)}
	}

	method sucursalQueMasFacturo() {
		sucursal.max{ unaSucursal => unaSucursal.precioFinal()}
	}

	method pedidoDeColor(tipoColor) {
		pedidos.count{ unPedido => unPedido.tipoRemera().color(tipoColor)}
	}

	method pedidoMasCaro() {
		pedidos.max{ unPedido => unPedido.precioFinal(self)}
	}

}

class Pedido {

	var property tipoRemera = null
	var property cantRemeras = 0

	method precioBase() {
		return tipoRemera.costeRemeraCompleta() * cantRemeras
	}

	method precioFinal(unaEmpresa) {
		return self.precioBase() - unaEmpresa.Sucursal().descuento(self)
	}

}