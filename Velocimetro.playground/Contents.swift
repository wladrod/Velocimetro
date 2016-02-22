//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int {
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50,
    VelocidadAlta = 120
    
    init(velocidadInitial: Velocidades) {
       self = velocidadInitial
    }
}

class Auto {
    var velocidad : Velocidades
    
    init(){
        velocidad = Velocidades(velocidadInitial: .Apagado)
    }
    
    func cambioDeVelocidad( ) -> (actual:Int, velocidadEnCadena:String) {
        let actual:Int
        let velocidadEnCadena:String
        switch velocidad {
        case .Apagado:  actual = velocidad.rawValue
                        velocidadEnCadena = "Apagado"
                       velocidad = .VelocidadBaja
        case .VelocidadBaja:  actual = velocidad.rawValue
                              velocidadEnCadena = "Velocidad baja"
                            velocidad = .VelocidadMedia
        case .VelocidadMedia:  actual = velocidad.rawValue
                             velocidadEnCadena = "Velocidad media"
                            velocidad = .VelocidadAlta
        case .VelocidadAlta:  actual = velocidad.rawValue
                             velocidadEnCadena = "Velocidad alta"
                            velocidad = .VelocidadMedia
            
        }
        return (actual, velocidadEnCadena)
    }
    
}

let demo = Auto()

for i in 1...20 {
    let tuple = demo.cambioDeVelocidad()
    print("\(i). \(tuple.0), \(tuple.1)")
}
