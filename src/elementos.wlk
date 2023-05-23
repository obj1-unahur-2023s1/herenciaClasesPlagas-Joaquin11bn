import plagas.*

class Hogar {
	var property nivelDeMugre
	var property confort 
	
	method esBueno(){
		return nivelDeMugre <= confort / 2
	}
	method recibirAtaque(unaPlaga){
		nivelDeMugre += unaPlaga.nivelDeDano()
	}
	
}

class Huerta{
	var property capacidadDeProduccion
	var property nivelDeProduccion = produccion
	method nivel(){
		return 10
	}
	
	
	method esBueno(){
		return capacidadDeProduccion > nivelDeProduccion.nivel()
} 
	method recibirAtaque(unaPlaga){
		capacidadDeProduccion =  0.max(capacidadDeProduccion - unaPlaga.nivelDeDano() * 0.1)
		if (unaPlaga.esTransmisor()){
		 capacidadDeProduccion = 0.max(capacidadDeProduccion - 10)
	}
	}
}
class Mascota{
	var property nivelDeSalud
	
	method esBueno(){
		return nivelDeSalud >= 250
	}
	
	method recibirAtaque(unaPlaga){
		if(unaPlaga.esTransmisor()) nivelDeSalud = 0.max(nivelDeSalud - unaPlaga.nivelDeDano())
	}
}

object produccion{
	var property nivel
}