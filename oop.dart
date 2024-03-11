abstract class CarService {
  void repairCar();
  void provideSpareParts();
}

class Driver {
  String name;
  String phone;
  
  Driver(this.name, this.phone);
  
  void drive() {
    print('$name is driving the car.');
  }
}

class Mechanic implements CarService {
  String name;
  String specialization;
  
  Mechanic(this.name, this.specialization);
  
  @override
  void repairCar() {
    print('$name is repairing the car.');
  }
  
  @override
  void provideSpareParts() {
    print('$name is providing spare parts.');
  }
}

class SparePartSeller implements CarService {
  String name;
  double rating;
  
  SparePartSeller(this.name, this.rating);
  
  @override
  void repairCar() {
    print('$name does not repair cars.');
  }
  
  @override
  void provideSpareParts() {
    print('$name is selling spare parts.');
  }
}


void main() {
  var driver = Driver('Trevor', '666-156-2323');
  var mechanic = Mechanic('Jerry', 'Engine Specialist');
  var sparePartSeller = SparePartSeller('Ruto', 4.5);
  
  for (int i = 0; i < 3; i++) {
    print('Iteration $i');
  }
  
  var dataFromFile = 'Susan,123-995-2381';
  var splitData = dataFromFile.split(',');
  var newDriver = Driver(splitData[0], splitData[1]);
  
  driver.drive();
  mechanic.repairCar();
  sparePartSeller.provideSpareParts();
}
