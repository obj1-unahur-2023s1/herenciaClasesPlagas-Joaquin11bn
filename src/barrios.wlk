import elementos.*

class Barrio {
	
	const property elementos = []
	
	method agregarElemento(unElemento){
		elementos.add(unElemento)
	}
	
	method eliminarElemento(unElemento){
		elementos.remove(unElemento)
	}
	
	method esCopado(){
		return elementos.count({e => e.esBueno()}) > elementos.size() / 2
	}
}
