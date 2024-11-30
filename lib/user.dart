import 'package:critain/post_class.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfilePage extends StatefulWidget {
  final Post user;

  ProfilePage({Key? key, required this.user}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Color.fromARGB(255, 22, 20, 21),
              foregroundColor: Colors.white,
              title: const Text(
                'Kembali',
                style: TextStyle(color: Colors.white),
              ),
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),

            ),
            backgroundColor: Color.fromARGB(255, 22, 20, 21),
            body: Column(
              children: [
                Container(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 15.0, 10.0, 15.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 28.0,
                              backgroundImage: NetworkImage(widget.user.avatar),
                            ),
                            SizedBox(
                              width: 12.0,
                            ),
                            Text(
                              widget.user.username,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment
                                    .end, //mengatur posisi agar di paling kanan
                                children: [],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bio User',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 190, 190, 190),
                                  ),
                                ),
                                Text(
                                  'Ini adalah contoh bio dari user',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 190, 190, 190),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                                style: TextStyle(color: Colors.white),
                                'Pengikut'),
                            SizedBox(
                              width: 6.0,
                            ),
                            Text(
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                                '12'),
                            SizedBox(
                              width: 20.0,
                            ),
                            Text(
                                style: TextStyle(color: Colors.white),
                                'Diikuti'),
                            SizedBox(
                              width: 6.0,
                            ),
                            Text(
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                                '100'),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(right: 5),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        Color.fromARGB(255, 30, 147, 211),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                  ),
                                  child: Text(
                                    'Ikuti',
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 22, 20, 21),
                                        fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Color.fromARGB(255, 22, 20, 21),
                  child: TabBar(
                    tabs: [
                      Tab(icon: Icon(Icons.article_sharp)),
                      Tab(icon: Icon(Icons.bookmark))
                    ],
                    indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(
                            width: 4.0,
                            color: Color.fromARGB(255, 30, 147, 211)),
                        insets: EdgeInsets.symmetric(horizontal: 106.0)),
                    indicatorColor: Color.fromARGB(255, 22, 20, 21),
                    labelColor: Color.fromARGB(255, 30, 147, 211),
                    unselectedLabelColor:
                        Colors.grey, // Warna ikon saat tidak dipilih
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      SingleChildScrollView(
                        child: Container(
                            color: Color.fromARGB(255, 22, 20, 21),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color.fromARGB(
                                              255, 31, 27, 28)))),
                              child: Padding(
                                padding:
                                    EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 14.0,
                                          backgroundImage:
                                              NetworkImage(widget.user.avatar),
                                        ),
                                        SizedBox(
                                          width: 8.0,
                                        ),
                                        Text(
                                          widget.user.username,
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 15.0,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Wrap(
                                            children: [
                                              Text(
                                                widget.user.textPost,
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    if (widget.user.image != null) ...[
                                      // ... adalah spread operator berguna untuk menambahkan beberapa widget ke dalam daftar anak-anak widget induk secara kondisional
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                            child: Center(
                                              child: ClipRRect(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                child: Image(
                                                  image: AssetImage(
                                                      widget.user.image!),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.thumb_up_alt_outlined,
                                              color: Colors.grey,
                                            )),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text(
                                          '1.8k',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        SizedBox(
                                          width: 12.0,
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: Icon(Icons.comment,
                                                color: Colors.grey)),
                                        SizedBox(
                                          width: 5.0,
                                        ),
                                        Text(
                                          '755',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                        Expanded(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(Icons
                                                    .bookmark_border_outlined),
                                                color: Colors.grey,
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            )),
                      ),
                      Container(
                          color: Color.fromARGB(255, 22, 20, 21),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color:
                                            Color.fromARGB(255, 31, 27, 28)))),
                            child: Padding(
                              padding:
                                  EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Image(
                                            image:
                                                AssetImage('assets/kosong.jpeg'))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
