object pepita {
    var energia = 100

    method volar(metros) {
        energia -= 10 + metros / 10
    }

    method descansar() {
        energia += 10
    }

    method estaCansada() {
        return energia < 30
    }

    method comer(alimento) {
        energia += alimento.calorias()
    }

    method energia() {
        return energia
    }
}

object alpiste {
  const valorBase = 25

  method calorias() {
    return valorBase
  }
}


object manzana {
    var madurez = 1
    const valorBase = 20
    method cambiarMadurez(nuevaMadurez) {
        if (nuevaMadurez >= 1 && nuevaMadurez <= 3) {
            madurez = nuevaMadurez
        }
    }

    method calorias() {
        if (madurez == 3) {
            return 0
        }
        return valorBase * madurez
    }
}

object pepon {
    var energia = 30


    method volar(kilometros) {
        energia -= 20 + 2 * kilometros
    }

    method comer(alimento) {
        energia += (alimento.calorias() / 2)
    }

    method estaCansado() {
        return energia < 34
    }

    method energia() {
        return energia
    }
}

object rebeca {
    var ave = pepita
    var cantidadCenas = 0

    method entrenar(nuevaAve) {
        ave = nuevaAve
        cantidadCenas = 0
    }

    method alimentar(alimento) {
        ave.comer(alimento)
        cantidadCenas += 1
    }

    method cenas() {
        return cantidadCenas
    }

    method ave() {
        return ave
    }
}