object neo {

    var energia = 100

    var vitalidad = energia / 10

    method esElElegido() = true

    method energia() = energia

    method saltar() {
        energia = energia / 2
    }

    method vitalidad() = vitalidad

}

object morfeo {

    var vitalidad = 8
    var estaCansado = false

    method esElElegido() = false

    method vitalidad() = vitalidad

    method saltar() {
        estaCansado = not estaCansado
        vitalidad = (vitalidad-1).max(0)
    }

}

object trinity {

    method esElElegido() = false

    method vitalidad() = 0

    method saltar() {}

}

object nave {

    const pasajeros = [neo, morfeo, trinity]

    method subirPasajeros(unPasajero) {
        pasajeros.add(unPasajero)
    }

    method bajarPasajero(unPasajero) {
        pasajeros.remove(unPasajero)
    }

    method cantidadDePasajeros() {
        return pasajeros.size()
    }

    method elPasajeroConMasVitalidad() {
        return pasajeros.max({pasajero => pasajero.vitalidad()})
    }

    method estaEquilibrada() {
       // return self.elPasajeroConMasVitalidad().vitalidad() <= min*2
    }

    method estaElELegido() {
        return pasajeros.any({unPasajero => unPasajero.esElElegido()})
    }

    method chocar() {
        pasajeros.forEach({p => p.saltar()})
        pasajeros.clear()
    }

    method acelerar() {
        pasajeros.filter({p => p.esElElegido()}).forEach({p => p.saltar()})

    }

}