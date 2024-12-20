import 'package:flutter/material.dart';
import 'package:wisata_candi/screens/profil_screen.dart';
import 'package:wisata_candi/screens/favorite_screen.dart';
import 'package:wisata_candi/screens/homescreen.dart';
import 'package:wisata_candi/search_screen.dart';
import 'package:wisata_candi/widgets/signin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Wisata Candi',
      home: SignInScreen(),
      // home: MainScreen(),
      // home : HomeScreen(),
      // home: SearchScreen(),
      // home: ProfileScreen(),
      // home: DetailScreen(candi: candiList[0],),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // TODO: 1. Deklarasikan variabel
  int _currentIndex = 0;
  final List<Widget> _children = [
    const HomeScreen(),
    const SearchScreen(),
    const FavoriteScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: 2. Buat properti body berupa widget yang ditampilkan
      body: _children[_currentIndex],

      // TODO: 3. Buat properti bottomNavigationBar dengan nilai Theme
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.deepPurple[50],
        ),

        // TODO: 4. Buat data dan child dari Theme
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.deepPurple[100],
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.deepPurple),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: Colors.deepPurple),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite, color: Colors.deepPurple),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.deepPurple),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}