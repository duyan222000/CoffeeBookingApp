import 'package:flutter/widgets.dart';

class QuantityOption with ChangeNotifier {
  int quantity = 1;
  void increaseQuantity() {
    quantity++;
    notifyListeners();
  }

  void decreaseQuantity() {
    if (quantity > 1) {
      quantity--;
      notifyListeners();
    }
  }
}

class ShotOption with ChangeNotifier {
  String currentShot = "Single";
  bool _singleShot = true;
  bool _doubleShot = false;
  int shotCost = 3;

  bool get singleShot => _singleShot;
  bool get doubleShot => _doubleShot;
  void chooseSingleShot() {
    _singleShot = true;
    _doubleShot = false;
    shotCost = 3;
    currentShot = "Single";
    notifyListeners();
  }

  void chooseDoubleShot() {
    _singleShot = false;
    _doubleShot = true;
    shotCost = 5;
    currentShot = "Double";
    notifyListeners();
  }
}

class TempOption with ChangeNotifier {
  bool _hot = true;
  bool get hot => _hot;

  void chooseHot() {
    _hot = true;
    notifyListeners();
  }

  void chooseCold() {
    _hot = false;
    notifyListeners();
  }
}

class SizeOption with ChangeNotifier {
  String currentSize = "Medium";
  bool _small = false;
  bool _medium = true;
  bool _big = false;
  int sizeCost = 2;

  bool get small => _small;
  bool get medium => _medium;
  bool get big => _big;
  void chooseSmall() {
    _small = true;
    _medium = false;
    _big = false;
    sizeCost = 0;
    currentSize = "Small";
    notifyListeners();
  }

  void chooseMedium() {
    _small = false;
    _medium = true;
    _big = false;
    sizeCost = 2;
    currentSize = "Medium";
    notifyListeners();
  }

  void chooseBig() {
    _small = false;
    _medium = false;
    _big = true;
    sizeCost = 4;
    currentSize = "Large";
    notifyListeners();
  }
}

class IceOption with ChangeNotifier {
  bool _leastAmount = false;
  bool _mediumAmount = true;
  bool _mostAmount = false;
  String currentIce = "Half Full";
  bool get leastIce => _leastAmount;
  bool get mediumIce => _mediumAmount;
  bool get mostIce => _mostAmount;

  void leastAmount() {
    _leastAmount = true;
    _mediumAmount = false;
    _mostAmount = false;
    currentIce = "Least";
    notifyListeners();
  }

  void mediumAmount() {
    _leastAmount = false;
    _mediumAmount = true;
    _mostAmount = false;
    currentIce = "Half Full";
    notifyListeners();
  }

  void mostAmount() {
    _leastAmount = false;
    _mediumAmount = false;
    _mostAmount = true;
    currentIce = "Full";
    notifyListeners();
  }
}
