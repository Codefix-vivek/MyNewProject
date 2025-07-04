import 'package:ecommerce/modules/home/screens/homeScreen.dart';
import 'package:flutter/material.dart';

class Bottomnavbar extends StatelessWidget {
  const Bottomnavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Navbar());
  }
}

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomePage(),
    Center(child: Text("Search")),
    Center(child: Text("Categories")),
    Center(child: Text("Cart")),
    Center(child: Text("Profile")),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xFF623CEA),
        unselectedItemColor: Colors.black54,
        showUnselectedLabels: true,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              children: [
                const Icon(Icons.shopping_cart_outlined),
                Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 16,
                      minHeight: 16,
                    ),
                    child: const Text(
                      '2',
                      style: TextStyle(color: Colors.white, fontSize: 10),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            label: 'Cart',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}



            // Column(
          //   children: [
          //     child:_screens[_currentIndex],
          //     bottomNavigationBar:BottomNavigationBar(_currentIndex:_currentIndex,
          //     selectedItemColor:Color(0xFF623CEA),
          //     unselectedItemColor:Colors.grey,
          //     type:BottomNavigationBar.fixed,
          //     OnTap(index){
          //       setState(() {
          //         _currentIndex = index;
          //       });
          //     },
          //     items:const[
          //       BottomNavigationBarItem(icon:Icon(Icons.home),label:"Home"),
          //       BottomNavigationBarItem(icon:Icon(Icons.search),label:"Search"),
          //       BottomNavigationBarItem(icon:Icon(Icons.category),label:"Category"),
          //       BottomNavigationBarItem(icon:Icon(Icons.shopping_cart),label:"Cart"),
          //       BottomNavigationBarItem(icon:Icon(Icons.profile),label:"Profile"),

          //     ]
          //     )
          //   ],
          // ),