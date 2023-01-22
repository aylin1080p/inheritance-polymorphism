import UIKit

var greeting = "inheritance-polymorphism"


class Vehicle {
    var vehicleColor:String?
    var vehicleName:String?
    
    init(vehicleColor:String,vehicleName:String) {
        self.vehicleColor = vehicleColor
        self.vehicleName = vehicleName
    }
    
    
    }

class Car:Vehicle {
    
    var carEnginePower:Int?
    var carSeat:Int?
    
    init(carEnginePower:Int, carSeat:Int,vehicleColor:String,vehicleName:String) {
        self.carSeat = carSeat
        self.carEnginePower = carEnginePower
        super.init(vehicleColor: vehicleColor, vehicleName: vehicleName)
    }
    
}

class Nissan:Car {
    var model:String?
    // this class should include Car&Vehicle classes init values
    
    
    
    init(carEnginePower: Int, carSeat: Int, vehicleColor: String, vehicleName: String, model:String) {
        self.model = model
        super.init(carEnginePower: carEnginePower, carSeat: carSeat, vehicleColor: vehicleColor, vehicleName: vehicleName)
    }
    
    
}

var bmw = Car(carEnginePower: 2400, carSeat: 4, vehicleColor: "black", vehicleName: "BMW 3.20")

var qasqhai = Nissan(carEnginePower: 1200, carSeat: 5, vehicleColor: "purple", vehicleName: "Qashqai", model: "X234")

print(qasqhai.carEnginePower!)
