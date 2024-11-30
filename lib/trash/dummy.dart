import 'package:flutter/material.dart';
import 'package:critain/newpost.dart';

void main() => runApp(MaterialApp(
      home: Aplikasi(),
      title: 'Aplikasi',
    ));

class Aplikasi extends StatefulWidget {
  const Aplikasi({super.key});

  @override
  State<Aplikasi> createState() => _AplikasiState();
}

class _AplikasiState extends State<Aplikasi> {
  int _currentIndex = 0;

  void _saatDiKlik(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 52.0, 0, 0),
          child: _widgetOptions.elementAt(_currentIndex),
        ),
      ),
      backgroundColor: Colors.grey[400],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: Color.fromARGB(255, 69, 71, 75),
        onTap: _saatDiKlik,
      ),
      floatingActionButton: _currentIndex == 0
          ? FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NewPost()),
                );
              },
              child: Icon(Icons.add),
            )
          : null,
    );
  }

  static final List<Widget> _widgetOptions = <Widget>[
    // HOME
    Column(
      children: [
        //POST 1
        InkWell(
          onTap: () {},
          child: Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10.0),
              color: const Color.fromARGB(255, 233, 233, 233),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 23.0,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1469598614039-ccfeb0a21111?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D'),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        'iybnr_',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Wrap(
                          children: [
                            Text(
                                style: TextStyle(fontSize: 14),
                                'ini tugas') //karena ini akan melebihi layar maka dibutuhkan expand untuk
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Center(
                            child:
                                Image(image: AssetImage('assets/tugas.jpeg'))),
                      )
                    ],
                  )
                ]),
              )), // agar container memmberi respon saat disentuh
        ),
        const SizedBox(
          width: 8.0,
        ),

        //POST 2
        InkWell(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 10.0),
            color: const Color.fromARGB(255, 233, 233, 233),
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 23.0,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1564510182791-29645da7fac4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZmFufGVufDB8fDB8fHww'),
                    ),
                    Text(
                      'kipasAngin',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Wrap(
                        children: [
                          Text(
                              style: TextStyle(fontSize: 14),
                              'guys cara kembali ke directory sebelumnya gimana dah') //karena ini akan melebihi layar maka dibutuhkan expand untuk
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
              ]),
            ),
          ), // agar container memmberi respon saat disentuh
        ),

        //POST 3
        InkWell(
          onTap: () {},
          child: Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 10.0),
              color: const Color.fromARGB(255, 233, 233, 233),
              child: const Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 23.0,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1543852786-1cf6624b9987?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fG1lbWV8ZW58MHx8MHx8fDA%3D'),
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        'the haslinging slyser',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Wrap(
                          children: [
                            Text(
                                style: TextStyle(fontSize: 14),
                                'all in chat gpt moment :') //karena ini akan melebihi layar maka dibutuhkan expand untuk
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Center(
                            child:
                                Image(image: AssetImage('assets/code.jpeg'))),
                      )
                    ],
                  )
                ]),
              )), // agar container memmberi respon saat disentuh
        ),

        //POST 4
        InkWell(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 10.0),
            color: const Color.fromARGB(255, 233, 233, 233),
            child: const Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 23.0,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1528998831154-b0276a56dcd9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHx0b3BpYy1mZWVkfDM3fEpwZzZLaWRsLUhrfHxlbnwwfHx8fHw%3D'),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Text(
                      'Sapi Kurban 80k',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Wrap(
                        children: [
                          Text(
                              style: TextStyle(fontSize: 14),
                              'Ketika nemu lagu baru dan relate sama kehidupan') //karena ini akan melebihi layar maka dibutuhkan expand untuk
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Center(
                          child: Image(
                              image:
                                  AssetImage('assets/diamdenganalbum.jpeg'))),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
              ]),
            ),
          ), // agar container memmberi respon saat disentuh
        ),
      ],
    ),
    Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                label: Text('Cari Sesuatu'),
                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.fromLTRB(8, 5, 10, 5),
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(2.0),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
    Column(
      children: [
        Container(
          color: const Color.fromARGB(255, 233, 233, 233),
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 23.0,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1469598614039-ccfeb0a21111?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D'),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  'iybnr_',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Logout'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            color: const Color.fromARGB(255, 233, 233, 233),
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.notifications,
                    size: 28,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    'Notifikasi',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 1.0,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            color: const Color.fromARGB(255, 233, 233, 233),
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.all_inbox_rounded,
                    size: 28,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    'Postingan Anda',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 1.0,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            color: const Color.fromARGB(255, 233, 233, 233),
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Icon(
                    Icons.question_mark,
                    size: 28,
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Text(
                    'Fitur Aplikasi',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  ];
}
