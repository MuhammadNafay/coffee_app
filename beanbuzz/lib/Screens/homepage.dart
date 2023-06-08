// import 'package:beanbuzz/Screens/allProducts.dart';
// import 'package:beanbuzz/Screens/home/itemList.dart';
import 'package:beanbuzz/widgets/bottomNavigationBar.dart';
import 'package:beanbuzz/widgets/card.dart';
import 'package:beanbuzz/Themes/colors.dart';
import 'package:flutter/material.dart';
import '../widgets/searchbar.dart';
import '../Screens/home/categories.dart';
import 'package:scroll_indicator/scroll_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List products = [
    {
      "name": "Cappuccino",
      "desc":
          "A cappuccino is an espresso-based coffee drink and is traditionally prepared with steamed milk foam (microfoam).",
      "img": "assets/images/capacino.png",
    },
    {
      "name": "Latte",
      "desc":
          "A latte or caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final.",
      "img": "assets/images/capacino.png",
    },
    {
      "name": "Americano",
      "desc":
          "Caffè Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to.",
      "img": "assets/images/amaricano.png",
    },
    {
      "name": "Americano",
      "desc":
          "Caffè Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to.",
      "img": "assets/images/amaricano.png",
    },
    {
      "name": "Americano",
      "desc":
          "Caffè Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to.",
      "img": "assets/images/amaricano.png",
    },
    {
      "name": "Americano",
      "desc":
          "Caffè Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to.",
      "img": "assets/images/amaricano.png",
    },
    {
      "name": "Americano",
      "desc":
          "Caffè Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to.",
      "img": "assets/images/amaricano.png",
    },
    {
      "name": "Americano",
      "desc":
          "Caffè Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to.",
      "img": "assets/images/amaricano.png",
    },
    {
      "name": "Americano",
      "desc":
          "Caffè Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to.",
      "img": "assets/images/amaricano.png",
    },
    {
      "name": "Americano",
      "desc":
          "Caffè Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to.",
      "img": "assets/images/amaricano.png",
    },
    {
      "name": "Americano",
      "desc":
          "Caffè Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to.",
      "img": "assets/images/amaricano.png",
    },
    {
      "name": "Americano",
      "desc":
          "Caffè Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to.",
      "img": "assets/images/amaricano.png",
    },
    {
      "name": "Americano",
      "desc":
          "Caffè Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to.",
      "img": "assets/images/amaricano.png",
    },
    {
      "name": "Americano",
      "desc":
          "Caffè Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to.",
      "img": "assets/images/amaricano.png",
    },
    {
      "name": "Americano",
      "desc":
          "Caffè Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to.",
      "img": "assets/images/amaricano.png",
    },
  ];

  final List itemList = [
    {
      "title": "Cappuccino",
      "subtitle":
          "A cappuccino is an espresso-based coffee drink and is traditionally prepared with steamed milk foam (microfoam).",
      "img": "assets/images/capacino.png"
    },
    {
      "title": "Latte",
      "subtitle":
          "A latte or caffè latte is a milk coffee that is a made up of one or two shots of espresso, steamed milk and a final.",
      "img": "assets/images/capacino.png"
    },
    {
      "title": "Americano",
      "subtitle":
          "Caffè Americano is a type of coffee drink prepared by diluting an espresso with hot water, giving it a similar strength to.",
      "img": "assets/images/amaricano.png"
    },
    {
      "title": "Cappuccino",
      "subtitle":
          "A cappuccino is an espresso-based coffee drink and is traditionally prepared with steamed milk foam (microfoam)",
      "img": "assets/images/capacino.png"
    },
  ];

  ScrollController scrollController = ScrollController();

  double pixels = 0.0;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.MyThemeColorbackground,
      body: Container(
          child: ListView(
        children: [
          // search bar
          searchbar(hintText: 'Search Any Thing'),
          // categories
          category(),
          // Products

          Center(
            child: SizedBox(
              height: 330,
              child: ListView(
                controller: scrollController,
                scrollDirection: Axis.horizontal,
                children: products.map((products) {
                  return Carad(
                      text: products["name"] as String,
                      imageUrl: products["img"],
                      subtitle: products["desc"] as String);
                }).toList(),
              ),
            ),
          ),
          Center(
            child: ScrollIndicator(
              scrollController: scrollController,
              width: 100,
              height: 5,
              indicatorWidth: 20,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.MyThemeColorbackground),
              indicatorDecoration: BoxDecoration(
                  color: AppColors.MyThemePrimaryColor,
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
         
          bottomNavBar(),
        ],
      )),
    );
  }
}
