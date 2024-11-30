import 'package:critain/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'post_class.dart';

class search extends StatefulWidget {
  const search({Key? key}) : super(key: key);

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {

  List<Post> filter = []; // Menampung hasil filter

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // filter diinisialisasi kosong
    filter = [];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    
      home: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              style: TextStyle(color: Colors.white),
              controller: searchController,
              onChanged: (value) {
                // akan terupdate setiap ada teks
                setState(() {
                  filter = user
                      .where((post) => //fungsi yang diteruskan ke where akan eksekusi setiap elemen dalam user
                          post.username.toLowerCase().contains(value.toLowerCase())) //cek apakah di list ada substring yang diinputkan
                      .toList(); //lalu mengubah hasil where jadi list
                });
              },
              decoration: InputDecoration(
                hintText: 'Cari User',hintStyle: TextStyle(color: Color.fromARGB(255,153,153,153 )),
                prefixIcon: const Icon(Icons.search,color:Color.fromARGB(255, 153,153,153) ,),
                contentPadding: const EdgeInsets.fromLTRB(8, 5, 10, 5),
                fillColor: Color.fromARGB(255, 31,27,28),
                filled: true,
                
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none
                ),
              ),
            ),
            if (filter.isNotEmpty) // jika filter tidak kosong maka
              Expanded(
                child: ListView.builder( //membuat list yang dapat di scroll dengan jumlkah item yang tidak tentu
                  itemCount: filter.length, //list diatas dibuat berdasarkan panjang list filter
                  itemBuilder: (context, index) { //memberi akses ke buildcontext dari widget 
                    
                    return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfilePage(user: filter[index]),
                // builder: (context) => Profile(),
              ),
            );
          },
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(filter[index].avatar),
            ),
            title: Text(
              filter[index].username,
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
