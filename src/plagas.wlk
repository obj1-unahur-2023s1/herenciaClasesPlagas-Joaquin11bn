class Plaga{
	var property poblacion
	
	method esTransmisor() = poblacion >= 10 
	
	method atacar(elemento){
		elemento.recibirAtaque(self)
		poblacion *= self.coheficiente()
	}
	method coheficiente() = 1.1
	
}


class Cucaracha inherits Plaga{

	var property pesoPromedio 
	
	override method esTransmisor(){
		return super() and pesoPromedio >= 10
	}
	
	method nivelDeDano()= poblacion / 2

	override method atacar(elemento) {
		
	 super(elemento)
	 pesoPromedio += 2
	 
	 }
}

class Pulga inherits Plaga{
		
	method nivelDeDano()= poblacion * 2
}


class Garrapata inherits Pulga {
	
	override method coheficiente() = 1.2
}

class Mosquito inherits Plaga{
	
	override method esTransmisor(){
		return super() and poblacion % 3 == 0
	}
	
	method nivelDeDano()= poblacion
}