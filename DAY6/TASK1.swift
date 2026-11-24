class Person{
    var name: String
    var apartment: Apartment?

    init(name: String , apartment: Apartment?){
        self.name = name
        self.apartment = apartment
    }
    deinit{
        print("person object is deleted")
    }
}
class Apartment{
    var unit: Int
    weak var tenant: Person?

    init(unit: Int, tenant: Person?){
        self.unit = unit
        self.tenant = tenant
    }
    deinit{
        print("Apartment object is deleted")
    }
}

var person: Person? = Person(name: "Santhiya" , apartment: nil)
var apartment: Apartment? = Apartment(unit: 123 , tenant: nil)

person?.apartment = apartment

apartment?.tenant = person

person = nil
apartment = nil

// when we give weak refernce it will delete 
//when it is a strong refrence it does not delete 

