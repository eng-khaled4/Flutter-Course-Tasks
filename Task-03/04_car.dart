class Car {
  String brand;
  String model;
  int year;
  int speed;

  Car(this.brand, this.model, this.year, this.speed);

  void accelerate() {
    speed += 10;
  }

  void brake() {
    speed -= 10;
    if (speed < 0) {
      speed = 0;
    }
  }

  void displayInfo() {
    print('Brand: $brand');
    print('Model: $model');
    print('Year: $year');
    print('Current speed: $speed');
  }
}

void main() {
  Car car = Car('Toyota', 'Corolla', 2022, 20);

  car.accelerate();
  car.displayInfo();

  car.brake();
  car.brake();
  car.displayInfo();
}
