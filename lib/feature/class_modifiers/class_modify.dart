import 'dart:developer';

/// Abstract class
///
///

abstract class AbstractVehicle {
  void moveForward(int meters) {
    log('Vehicle is moving forward $meters meters');
  }
}

abstract class AbstractShape {
  void draw();
}

//! Error: Can't be constructed.
// Vehicle myVehicle = Vehicle();

class Car extends AbstractVehicle {}

// Can be extended.
class Circle extends AbstractShape {
  @override
  void draw() {
    // TODO: implement draw
  }
}

// Can be implemented.
class Mock implements AbstractVehicle {
  @override
  void moveForward(int meters) {
    // TODO: implement moveForward
  }
}

/// Base class
///
///

base class BaseVehicle {
  void moveForward(int meters) {
    log('Vehicle is moving forward $meters meters');
  }
}

// Can be constructed.
// BaseVehicle myVehicle = BaseVehicle();

// Can be extended.
base class Bicycle extends BaseVehicle {
  int passengers = 4;

  @override
  void moveForward(int meters) {
    // TODO: implement moveForward
    super.moveForward(meters);
  }
}

base class Mock1 implements BaseVehicle {
  @override
  void moveForward(int meters) {
    // TODO: implement moveForward
  }
}

/// Interface
///
///

interface class InterfaceVehicle {
  void moveForward(int meters) {
    log('Vehicle is moving forward $meters meters');
  }
}

// Can be constructed.
// InterfaceVehicle myVehicle = InterfaceVehicle();

class Horse extends InterfaceVehicle {}

// Can be implemented.
class Mock2 implements InterfaceVehicle {
  @override
  void moveForward(int meters) {
    // TODO: implement moveForward
  }
}

/// Final class
///
///

final class FinalVehicle {
  void moveForward(int meters) {
    log('Vehicle is moving forward $meters meters');
  }
}

// Can be constructed.
FinalVehicle myVehicle = FinalVehicle();

// ERROR: Can't be inherited.
// class Airplane extends FinalVehicle {
//   int passengers = 4;
//   // ...
// }

// class MockVehicle implements FinalVehicle {
//   // ERROR: Can't be implemented.
//   @override
//   void moveForward(int meters) {
//     // ...
//   }
// }

/// Sealed class
///
///

sealed class SealedVehicle {}

class Bus extends SealedVehicle {}

class Truck implements SealedVehicle {}

class Train extends SealedVehicle {}

// ERROR: Can't be instantiated.
// SealedVehicle mySealedVehicle = SealedVehicle();

// Subclasses can be instantiated.
SealedVehicle myBus = Bus();

String getVehicleSound(SealedVehicle vehicle) {
  // ERROR: The switch is missing the Bicycle subtype or a default case.
  return switch (vehicle) {
    Train() => 'vroom',
    Truck() => 'VROOOOMM',
    Bus() => 'vroom vroom',
  };
}

/// Mixin
///
///
///

abstract class MixinVehicle {
  void moveForward(int meters);
}

abstract class Hoho {
  void backUp(int meters);
}

abstract interface class Tuner {
  void tuneInstrument();
  void playInstrument() {
    log('Playing instrument');
  }
}

mixin Movable implements MixinVehicle {
  void backUp(int meters) {
    log('Vehicle is moving backward $meters meters');
  }
}

class Mouse extends Tuner with Movable {
  @override
  void moveForward(int meters) {}

  @override
  void tuneInstrument() {
    // TODO: implement tuneInstrument
  }
}
