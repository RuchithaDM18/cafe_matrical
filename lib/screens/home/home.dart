import 'package:flutter/material.dart';
import 'package:cafe_matrical/screens/detail/detail.dart';
import 'package:cafe_matrical/screens/home/widget/FavoritesPage.dart';
import 'package:cafe_matrical/screens/home/widget/categoryitems.dart';
import 'package:cafe_matrical/screens/home/widget/custom_app_bar.dart';
import 'package:cafe_matrical/screens/home/widget/new_arrival.dart';
import 'package:cafe_matrical/screens/home/widget/popular.dart';
import 'package:cafe_matrical/screens/home/widget/search_input.dart';
import 'package:cafe_matrical/models/coffee.dart';

import '../../models/bestsell.dart';

class HomePage extends StatelessWidget {
  final bottomList = ['home', 'menu', 'heart', 'user'];

  // Define coffeeList here
  final List<Coffees> coffeeList = Coffees.generateCoffees();
  final List<BestSellers> bestSellersList = BestSellers.generateBestSellers();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            SearchInput(
              coffeesList: coffeeList,
              onItemClicked: (selectedCoffee) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(coffees: selectedCoffee),
                  ),
                );
              },
            ),
            // CategoryItems(),
            NewArrival(coffeesList: Coffees.generateCoffees()),

            Popular(),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottomList.map((e) => BottomNavigationBarItem(
          label: e,
          icon: Image.asset('assets/icons/$e.png', width: 25),
        )).toList(),
        onTap: (index) {
          if (index == bottomList.indexOf('heart')) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => FavouriteScreen(),
              ),
            );
          }
        },
      ),
    );
  }
}