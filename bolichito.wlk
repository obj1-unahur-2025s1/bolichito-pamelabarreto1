import objetos.*
import personas.*


object bolichito {
  var objetoEnVidriera=remera
  var objetoEnCaja=pelota
    
    method cambiarObjetoEnVidriera(unObjetoNuevo) {
    objetoEnVidriera = unObjetoNuevo}

  method cambiarObjetoEnCaja(unObjetoNuevo) {
    objetoEnCaja = unObjetoNuevo}

    method esBrillante() {
      objetoEnCaja.material().brilla() &&
       objetoEnVidriera.material().brilla()
    }
    method esMonocromatico() {
      objetoEnCaja.color() == objetoEnVidriera.color()
    }
    method estaEquilibrado() {
        objetoEnCaja.peso() > objetoEnVidriera.peso()
    } 
      method tieneObjetoDeColor(unColor) {
        return objetoEnCaja.color() == unColor 
        || objetoEnVidriera.color() == unColor
    }

    method puedeMejorar(objeto) {
      return objeto.esMonocromatico() || not objeto.estaEquilibrado()
    }

    method puedeOfrecerleAlgoA(unaPersona) {
        return unaPersona.leGusta(objetoEnCaja) 
        || unaPersona.leGusta(objetoEnVidriera)
    }
}