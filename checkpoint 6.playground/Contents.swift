import Cocoa
 
struct Car {
    let model: String
    let seatNumber: Int
    
    private(set) var currentGear: Int {
        didSet{
            if currentGear < 1 {
                currentGear = 1
            } else if currentGear > 6{
                currentGear = 6
            }
        }
    }
    
    init(model: String, seatNumber: Int, currentGear: Int = 1){
        self.model = model
        self.seatNumber = seatNumber
        self.currentGear = currentGear
    }
    
    mutating func gearUp(){
        if currentGear < 6{
            currentGear +=  1
        }
    }
    
    mutating func gearDown(){
        if currentGear > 1{
            currentGear -= 1
        }
    }

}
var theCar = Car(model: "chrysler", seatNumber: 4)
theCar.gearUp()
theCar.gearUp()
print(theCar.model)
print(theCar.currentGear)
