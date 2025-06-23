import 'package:marketplace/model/burger_model.dart';

List<BurgerModel> getBurger() {
  return [
    BurgerModel(
      image: "assets/images/burger1.png",
      name: "Cheese Burger",
      price: "50",
    ),
    BurgerModel(
      image: "assets/images/burger2.png",
      name: "Veggie Burger",
      price: "80",
    ),
  ];
}
