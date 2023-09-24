import 'package:clothes_store/component/component.dart';
import 'package:clothes_store/pages/cart_screen.dart';
import 'package:clothes_store/pages/home_screen.dart';
import 'package:clothes_store/pages/menu_screen.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 1;

  final List<Widget> screens = [
    const CartScreen(),
    const MenuScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();

  @override
  Widget build(BuildContext context) {
    var isDesktop = MediaQuery.sizeOf(context).width > 500;
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: currentIndex == 1 ? mainColor : Colors.white,
        child: Icon(
          Icons.home,
          color: currentIndex == 1 ? Colors.white : Colors.grey,
        ),
        onPressed: () {
          setState(() {
            currentScreen = HomeScreen();
            currentIndex = 1;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: isDesktop ? 120 : 60),
          child: Container(
            alignment: Alignment.center,
            height: 60,
            child: Row(
              //main.spaceBetween
              children: <Widget>[
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      currentScreen = CartScreen();
                      currentIndex = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, //main.center
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        color: currentIndex == 0 ? mainColor : Colors.grey,
                      ),
                      Text(
                        "Cart",
                        style: TextStyle(
                          color: currentIndex == 0 ? mainColor : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                MaterialButton(
                  onPressed: () {
                    setState(() {
                      currentScreen = MenuScreen();
                      currentIndex = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center, //main.center
                    children: [
                      Icon(
                        Icons.menu,
                        color: currentIndex == 2 ? mainColor : Colors.grey,
                      ),
                      Text(
                        "Menu",
                        style: TextStyle(
                          color: currentIndex == 2 ? mainColor : Colors.grey,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
