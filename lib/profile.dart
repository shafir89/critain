import 'package:critain/editprofile.dart';
import 'package:critain/loginpage.dart';
import 'package:critain/setting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Profile extends StatefulWidget {
  Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 22, 20, 21),
            body: Column(
              children: [
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 15.0, 10.0, 15.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 28.0,
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1469598614039-ccfeb0a21111?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D'),
                            ),
                            const SizedBox(
                              width: 12.0,
                            ),
                            const Text(
                              'user1',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment
                                    .end, //mengatur posisi agar di paling kanan
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      showModalBottomSheet<void>(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Container(
                                            height: 150,
                                            decoration: const BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                      top: Radius.circular(
                                                          25.0)),
                                              color: Color.fromARGB(
                                                  255, 22, 20, 21),
                                            ),
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    IconButton(
                                                        onPressed: () =>
                                                            Navigator.pop(
                                                                context),
                                                        icon: const Icon(Icons
                                                            .horizontal_rule_outlined))
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                        child: SizedBox(
                                                      height: 50,
                                                      child: FilledButton(
                                                        onPressed: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) =>
                                                                  Pengaturan(),
                                                            ),
                                                          );
                                                        },
                                                        style: FilledButton
                                                            .styleFrom(
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0),
                                                                ),
                                                                backgroundColor:
                                                                    const Color
                                                                        .fromARGB(
                                                                        255,
                                                                        22,
                                                                        20,
                                                                        21)),
                                                        child: const Text(
                                                          'Pengaturan',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                    )),
                                                  ],
                                                ),
                                                Row(
                                                  children: [
                                                    Expanded(
                                                        child: SizedBox(
                                                      height: 51.8,
                                                      child: FilledButton(
                                                        onPressed: () =>
                                                            showDialog<String>(
                                                          context: context,
                                                          builder: (BuildContext
                                                                  context) =>
                                                              Dialog(
                                                            backgroundColor:
                                                                const Color
                                                                    .fromARGB(
                                                                    255,
                                                                    22,
                                                                    20,
                                                                    21),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(8.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: <Widget>[
                                                                  const SizedBox(
                                                                    height: 10,
                                                                  ),
                                                                  const Text(
                                                                    'Apakah anda yakin ingin keluar?',
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            16,
                                                                        color: Colors
                                                                            .white),
                                                                  ),
                                                                  const SizedBox(
                                                                      height:
                                                                          15),
                                                                  Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceAround,
                                                                    children: [
                                                                      TextButton(
                                                                        onPressed:
                                                                            () {
                                                                          Navigator.pop(
                                                                              context);
                                                                        },
                                                                        child:
                                                                            const Text(
                                                                          'Tidak',
                                                                          style:
                                                                              TextStyle(color: Colors.white),
                                                                        ),
                                                                      ),
                                                                      TextButton(
                                                                        onPressed:
                                                                            () {
                                                                          Navigator.pushReplacement(
                                                                              context,
                                                                              MaterialPageRoute(builder: (context) => const Aplikasi()));
                                                                        },
                                                                        child:
                                                                            const Text(
                                                                          'Ya',
                                                                          style:
                                                                              TextStyle(color: Colors.red),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        style: FilledButton
                                                            .styleFrom(
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0),
                                                                ),
                                                                backgroundColor:
                                                                    const Color
                                                                        .fromARGB(
                                                                        255,
                                                                        107,
                                                                        29,
                                                                        29)),
                                                        child: const Text(
                                                          'Logout',
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                      ),
                                                    )),
                                                  ],
                                                )
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    },
                                    icon: const Icon(Icons.menu),
                                    // icon: const Icon(Icons.more_vert),
                                    color:
                                        const Color.fromARGB(255, 30, 147, 211),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Row(
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
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Editprofile(),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:
                                        const Color.fromARGB(255, 22, 20, 21),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side:
                                          const BorderSide(color: Colors.grey),
                                    ),
                                  ),
                                  child: const Text(
                                    'Edit Profile',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
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
                  color: const Color.fromARGB(255, 22, 20, 21),
                  child: const TabBar(
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
                      Container(
                          color: const Color.fromARGB(255, 22, 20, 21),
                          child: Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color:
                                            Color.fromARGB(255, 31, 27, 28)))),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  10.0, 15.0, 10.0, 15.0),
                              child: Column(
                                children: [
                                  const Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 14.0,
                                        backgroundImage: NetworkImage(
                                            'https://images.unsplash.com/photo-1469598614039-ccfeb0a21111?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D'),
                                      ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(
                                        'user1',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15.0,
                                  ),
                                  const Row(
                                    children: [
                                      Expanded(
                                        child: Wrap(
                                          children: [
                                            Text(
                                              'tugas tahap individu',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  const Row(
                                    children: [
                                      Expanded(
                                        child: Center(
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                            child: Image(
                                              image: AssetImage(
                                                  'assets/tugas.jpeg'),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.thumb_up_alt_outlined,
                                            color: Colors.grey,
                                          )),
                                      const SizedBox(
                                        width: 5.0,
                                      ),
                                      const Text(
                                        '1.8k',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      const SizedBox(
                                        width: 12.0,
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.comment,
                                              color: Colors.grey)),
                                      const SizedBox(
                                        width: 5.0,
                                      ),
                                      const Text(
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
                                              icon: const Icon(Icons
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
                      Container(
                          color: const Color.fromARGB(255, 22, 20, 21),
                          child: Container(
                            decoration: const BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color:
                                            Color.fromARGB(255, 31, 27, 28)))),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  10.0, 15.0, 10.0, 15.0),
                              child: Column(
                                children: [
                                  const Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 14.0,
                                        backgroundImage: NetworkImage(
                                            'https://images.unsplash.com/photo-1564510182791-29645da7fac4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8ZmFufGVufDB8fDB8fHww'),
                                      ),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Text(
                                        'user2',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15.0,
                                  ),
                                  const Row(
                                    children: [
                                      Expanded(
                                        child: Wrap(
                                          children: [
                                            Text(
                                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.thumb_up_alt_outlined,
                                            color: Colors.grey,
                                          )),
                                      const SizedBox(
                                        width: 5.0,
                                      ),
                                      const Text(
                                        '1.8k',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                      const SizedBox(
                                        width: 12.0,
                                      ),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(Icons.comment,
                                              color: Colors.grey)),
                                      const SizedBox(
                                        width: 5.0,
                                      ),
                                      const Text(
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
                                              icon: const Icon(Icons.bookmark),
                                              color: const Color.fromARGB(
                                                  255, 30, 147, 211),
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
