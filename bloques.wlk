object pepita {
  var energia = 100

  method energia() = energia

  method volar(distancia) {
    self.validarVolar(distancia)
    energia = energia - self.energiaParaVolar(distancia)
  }

  method validarVolar(distancia) {
    if (energia < self.energiaParaVolar(distancia)) {
      self.error("No puedo volar esta distancia")
    }
  }

  method energiaParaVolar(distancia) {
    return 10 + distancia
  }

  method comer(alimento) {
    energia = energia + alimento.energiaQueAporta()
  }


}

object alpiste {
  method energiaQueAporta() = 20
}

object miAsserter {

    method assertException(bloque) { //se espera un bloque que corte la ejecucion

      try {
        bloque.apply() //ejecuto el bloque // 1. Si da error
        return false //no anda como espero //2. Lo atrapa acá
      }
      catch e: Exception {
        return true //anda como espero, validacion completa
      } 
      
    }

}
object roque {
	var ave = pepita
	var cenas = 0;
  var rutina = {}
	
	method ave(_ave) {
		ave = _ave
		cenas = 0
	}
	
	method alimentar(alimento) {
		ave.comer(alimento)
		cenas = cenas + 1
	}

  method rutina(_rutina){
    rutina = _rutina
  }

  method entrenar(){
    rutina.apply(ave)
  }

}

dd


/**
NOTAS clase 9/4


var miBloque = {pepita.volar(10)}
 define un bloque que cuando se ejecuta, pepita va a volar
 separa el momento de la ejecucion q
 miBloque.aplly 

 miBloque = { pepita.volar(5) ; pepita.comer(alpiste) 
 
 miBloque. apply() 
 var energiaDePepita = miBloque.apply()

 diferente implementacion si es orden y consulta???


 Se puede parametrizar
 miBloque = {comidad => pepita.comer(comida)}

 comida no es un objeto, es un parametro que se defined
 miBloque.apply() X espera un parametro // es importante saber cuantos

 miBloque.apply(alpiste) 


miBloque = {ave, comida => ave.comer(comida)}

miBloque.apply(pepita, alpiste)






 object miAsserter{
 espero tener un metodo que reciba un bloque 
  "indica si la ejecucion del bloque termino "bien o mal"

  method assertException(unBloque){ //se espera un bloque que corte la ejecucion
    try {
      unBloque.apply() // si lanza error
      catch e: Exception { //este lo atrapa
      // esto se va a ejecutar si hay un error
      }
     // esto se ejecuta siempre
    }
  
  }

  avisa que no funciono, 
  se ejecuta si hay error

  
const miBloqueVolarQueDeberiaExplotar

///////////////////

roque.rutina( { ave = > ave.volar(); ave.alimentar(alpiste)})





*/