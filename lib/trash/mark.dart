import 'package:critain/profile.dart';
import 'package:flutter/material.dart';
import 'package:critain/fiturApk.dart';
import 'package:critain/loginpage.dart';
import 'package:critain/notifikasi.dart';
// import 'package:critain/postingan.dart';

class Mark extends StatefulWidget {
  const Mark({super.key});

  @override
  State<Mark> createState() => _MarkState();
}

class _MarkState extends State<Mark> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color.fromARGB(255, 31, 27, 28),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15.0, 15.0, 10.0, 15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25.0,
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1469598614039-ccfeb0a21111?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D'),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    const Text(
                      'user1',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment
                            .end, //mengatur posisi agar di paling kanan
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.settings),
                            color: const Color.fromARGB(255, 160, 100, 255),
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
                          height: 18.0,
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
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                color: const Color.fromARGB(255, 22, 20, 21),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: IconButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => Profile()));
                        },
                        icon: const Icon(Icons.article_sharp),
                      ),
                    ),
                    Container(
                      child: IconButton(
                        onPressed: () {
                          
                        },
                        icon: const Icon(
                          Icons.bookmark,
                          color: Color.fromARGB(255, 160, 100, 255),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          decoration: const BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Color.fromARGB(255, 31, 27, 28)))),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
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
                            style: TextStyle(fontSize: 14, color: Colors.white),
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
                          color: Colors.white,
                        )),
                    const SizedBox(
                      width: 5.0,
                    ),
                    const Text(
                      '1.8k',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 12.0,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.comment, color: Colors.white)),
                    const SizedBox(
                      width: 5.0,
                    ),
                    const Text(
                      '755',
                      style: TextStyle(color: Colors.white),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.bookmark_border_outlined),
                            color: Color.fromARGB(255, 160, 100, 255),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
