import 'package:flutter/material.dart';
import 'package:critain/newpost.dart';
import 'package:critain/profile.dart';
import 'package:critain/home.dart';
import 'package:critain/search.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex =
      0; //melacak index halaman yang dipilih, default nya 0 maka awalnya di halaman home

  final List<Widget> _daftar = [
    //daftar widget yang sesuai dgn setiap halaman
    Home(),
    const search(),
     Profile(),
  ];

  void saatdiKlik(int index) {
    //fungsi untuk bottomnavbar dgn parameter index
    setState(() {
      //memperbarui state
      _currentIndex = index; //memperbarui state apk menjadi index yang di klik
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 22, 20, 21),
          body: _daftar[
              _currentIndex], //menampilkan widget dari daftar yang sesuai dengan currentindex
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 22, 20, 21),
            selectedItemColor: const Color.fromARGB(255, 30,147,211),
            unselectedItemColor: Colors.grey,
            onTap: saatdiKlik, //panggil fungsi saatdiKlik
            currentIndex: _currentIndex, // menandai tab saat ini
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Beranda',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Pencarian',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profil',
              ),
            ],
          ),
          floatingActionButton: _currentIndex ==
                  0 //ditampilkan index 0 alias home sebagai default nya
              ? FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      //navigasi ke halaman
                      context, //build context memberi akses ke widget tree
                      MaterialPageRoute(
                          builder: (context) =>
                               NewPost()), //menentukan instance
                    );
                  },
                  child: const Icon(Icons.add),
                  foregroundColor: const Color.fromARGB(
                      255, 31, 27, 28), //agar ikon berwarna hitam
                  backgroundColor: const Color.fromARGB(255, 30,147,211),
                )
              : null, //jika tidak maka tidak ditampilkan
        ),
      ),
    );
  }
}
