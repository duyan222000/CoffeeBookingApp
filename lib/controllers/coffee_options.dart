import 'package:flutter/widgets.dart';

class QuantityOption with ChangeNotifier {
  int quantity = 0;
  void increaseQuantity() {
    quantity++;
    notifyListeners();
  }

  void decreaseQuantity() {
    if (quantity != 0) {
      quantity--;
      notifyListeners();
    }
  }
}

class ShotOption with ChangeNotifier {
  bool _singleShot = false;
  bool _doubleShot = false;

  bool get singleShot => _singleShot;
  bool get doubleShot => _doubleShot;
  void chooseSingleShot() {
    _singleShot = true;
    _doubleShot = false;
    notifyListeners();
  }

  void chooseDoubleShot() {
    _singleShot = false;
    _doubleShot = true;
    notifyListeners();
  }
}

class CupTypeOption with ChangeNotifier {
  bool _cup = false;
  bool _plastic = false;

  bool get cup => _cup;
  bool get plastic => _plastic;

  void chooseCup() {
    _cup = true;
    _plastic = false;
    notifyListeners();
  }

  void choosePlastic() {
    _cup = false;
    _plastic = true;
    notifyListeners();
  }
}

class SizeOption with ChangeNotifier {
  bool _small = false;
  bool _medium = false;
  bool _big = false;

  bool get small => _small;
  bool get medium => _medium;
  bool get big => _big;
  void chooseSmall() {
    _small = true;
    _medium = false;
    _big = false;
    notifyListeners();
  }

  void chooseMedium() {
    _small = false;
    _medium = true;
    _big = false;
    notifyListeners();
  }

  void chooseBig() {
    _small = false;
    _medium = false;
    _big = true;
    notifyListeners();
  }
}

class IceOption with ChangeNotifier {
  bool _leastAmount = false;
  bool _mediumAmount = false;
  bool _mostAmount = false;

  bool get leastIce => _leastAmount;
  bool get mediumIce => _mediumAmount;
  bool get mostIce => _mostAmount;

  void leastAmount() {
    _leastAmount = true;
    _mediumAmount = false;
    _mostAmount = false;
    notifyListeners();
  }

  void mediumAmount() {
    _leastAmount = false;
    _mediumAmount = true;
    _mostAmount = false;
    notifyListeners();
  }

  void mostAmount() {
    _leastAmount = false;
    _mediumAmount = false;
    _mostAmount = true;
    notifyListeners();
  }
}
