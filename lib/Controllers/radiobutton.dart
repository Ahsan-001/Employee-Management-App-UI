import 'package:get/get.dart';

class ButtonController extends GetxController {
  String _orderType = 'home_delivery';
  String get orderType => _orderType;
  void setOrderType(String type) {
    _orderType = type;
    print("The order type is " + _orderType);
    update();
  }
}

class DropDownController extends GetxController {
  // It is mandatory initialize with one value from listType
  final selected = "".obs;
  final listType = ["Default", "One", "Two"];
  void setSelected(String value) {
    selected.value = value;
  }
}

class SerivceTypeDropDownController extends GetxController {
  // It is mandatory initialize with one value from listType
  final selected = "".obs;
  final listType = [
    "Gardening ",
    "Cleaning",
    "Construction",
    "Installation",
    "Painting",
    "Carpentry",
    "Stocks",
  ];
  void setSelected(String value) {
    selected.value = value;
  }
}

class SelectLocationDropDownController extends GetxController {
  // It is mandatory initialize with one value from listType
  final selected = "".obs;
  final listType = [
    "Maracaibo",
    "Barcelona",
    "Madurez",
    "Los andes",
    "Valencia",
    "Caracas",
    "Stocks",
    "Compras venezuela",
  ];
  void setSelected(String value) {
    selected.value = value;
  }
}

class CheckController1 extends GetxController {
  var checkbool = false.obs;
}

class CheckController2 extends GetxController {
  var checkbool = false.obs;
}

class CheckController3 extends GetxController {
  var checkbool = false.obs;
}

class CheckController4 extends GetxController {
  var checkbool = false.obs;
}

class CheckController5 extends GetxController {
  var checkbool = false.obs;
}

class CheckController6 extends GetxController {
  var checkbool = false.obs;
}

class CheckController7 extends GetxController {
  var checkbool = false.obs;
}
