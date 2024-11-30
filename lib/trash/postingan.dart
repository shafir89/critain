import 'package:flutter/material.dart';

class post extends StatelessWidget {
  const post({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Seluruh Postingan Anda'),
        ),
        backgroundColor: Color.fromARGB(255, 32,32,44),
        body: Card(
          margin: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 467),
          color: Color.fromARGB(255, 255, 255, 255),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
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
                      'user1',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
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
                            'tugas tahap individu',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
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
                          image: AssetImage('assets/tugas.jpeg'),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 12.0,
                    ),
                    Icon(Icons.thumb_up_alt_outlined),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text('1.8k'),
                    SizedBox(
                      width: 12.0,
                    ),
                    Icon(Icons.comment),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text('755')
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
