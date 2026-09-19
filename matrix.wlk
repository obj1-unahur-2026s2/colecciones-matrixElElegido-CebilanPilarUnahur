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

    const pasajeros = []

    method subirPasajeros(unPasajero) {
        pasajeros.add(unPasajero)
    }

    method bajarPasajero(unPasajero) {
        pasajeros.remove(unPasajero)
    }

    method cantidadDePasajeros() {
        return pasajeros.size()
    }

    method elPasajeroConMasVitalidad(){
        return pasajeros.max({pasajero => pasajero.vitalidad()})
    }


}