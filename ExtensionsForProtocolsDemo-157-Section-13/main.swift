//
//  main.swift
//  ExtensionsForProtocolsDemo-157-Section-13
//
//  Created by Abdurahman on 19.11.2023.
//

protocol CanFly {
    // Func body is empty here. It should be defined in class method.
    func fly()
}

// Bird class'ına fly metodu ekleyerek inheritance ile yapabileceğimiz şeyi, protokol'ün extension'ı ile yaptık.
// What we could do by adding a fly method to the Bird class, we did with the extension of the protocol.
extension CanFly{
    func fly(){
        print("The object takes off into the air")
    }
}

class Bird {
    var isFemale = true
    
    func layEgg(){
        if(isFemale){
            print("The bird makes a new bird in a shell")
        }
    }
}

class Eagle: Bird, CanFly {
//    func fly() {
//        print("The eagle flaps its wings and lifts off into the sky")
//    }
    
    func soar(){
        print("The eagle glides in the air using air currents")
    }
}

class Penguin: Bird {
    func swim(){
        print("The penguin paddles through the water")
    }
}

struct FlyingMuseum {
    // We can use protocol as a dataType(CanFly).
    func flyingDemo(flyingObject: CanFly){
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
//    func fly() {
//        print("The airplane uses its engine to lift off into the air")
//    }
}

let myEagle = Eagle()
myEagle.fly()
let myPlane = Airplane()
myPlane.fly()


let museum = FlyingMuseum()
// We can pass object(myPlane) instead of protocol
museum.flyingDemo(flyingObject: myPlane)


