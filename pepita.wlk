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

    method madurez(nuevaMadurez) {
        madurez = nuevaMadurez
    }

    method calorias() {
        if (madurez == 3) {
            return 0
        }
        return 20 * madurez
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