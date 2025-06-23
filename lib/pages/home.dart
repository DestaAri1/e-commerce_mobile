import 'package:flutter/material.dart';
import 'package:marketplace/component/category_tile.dart';
import 'package:marketplace/component/food_tile.dart';
import 'package:marketplace/model/burger_model.dart';
import 'package:marketplace/model/pizza_model.dart';
import 'package:marketplace/services/burger_data.dart';
import 'package:marketplace/services/category_data.dart';
import 'package:marketplace/model/category_model.dart';
import 'package:marketplace/services/pizza_data.dart';
import 'package:marketplace/services/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = [];
  List<PizzaModel> pizza = [];
  List<BurgerModel> burger = [];
  String track = "0";

  @override
  void initState() {
    categories = getCategories();
    pizza = getPizza();
    burger = getBurger();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20, top: 30),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[_homeLogo(), _userPicture()],
            ),
            SizedBox(height: 10),
            _searchBar(),
            SizedBox(height: 10),
            _categoryList(),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(right: 20),
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.68,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: track == "0"
                      ? pizza.length
                      : track == "1"
                      ? burger.length
                      : null,
                  itemBuilder: (context, index) {
                    print(track);
                    return track == "0"
                        ? FoodTile(
                            name: pizza[index].name!,
                            image: pizza[index].image!,
                            price: pizza[index].price!,
                          )
                        : track == "1"
                        ? FoodTile(
                            name: burger[index].name!,
                            image: burger[index].image!,
                            price: burger[index].price!,
                          )
                        : Container();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _homeLogo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          "assets/images/logo.png",
          height: 50,
          width: 130,
          fit: BoxFit.contain,
        ),
        Text(
          "Order your favourite food!",
          style: AppWidget.simpleTextFieldStyle(20),
        ),
      ],
    );
  }

  Widget _userPicture() {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Image.asset(
          "assets/images/boy.jpg",
          height: 45,
          width: 45,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _searchBar() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 10),
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: Color(0xFFececf8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search...",
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(9),
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            color: Color(0xFFef2b39),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(Icons.search, color: Colors.white, size: 30),
        ),
      ],
    );
  }

  Widget _categoryList() {
    return SizedBox(
      height: 40,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return CategoryTile(
            name: categories[index].name!,
            image: categories[index].image!,
            categoryIndex: index.toString(),
            selectedIndex: track,
            onTap: () {
              setState(() {
                track = index.toString();
              });
            },
          );
        },
        shrinkWrap: true,
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
