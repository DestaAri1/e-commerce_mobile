import 'package:marketplace/model/category_model.dart';

List<CategoryModel> getCategories() {
  return [
    CategoryModel(name: "Pizza", image: "assets/images/pizza.png"),
    CategoryModel(name: "Burger", image: "assets/images/burger.png"),
    CategoryModel(name: "Chinese", image: "assets/images/chinese.png"),
    CategoryModel(name: "Mexican", image: "assets/images/tacos.png"),
  ];
}
