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