import 'package:flutter/material.dart';
import 'package:critain/bottomnav.dart';
import 'package:flutter/widgets.dart';

class NewPost extends StatelessWidget {
  const NewPost({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 22, 20, 21),
          foregroundColor: Colors.white,
          title: const Text(
            'Buat Postingan',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          color: const Color.fromARGB(255, 22, 20, 21),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 511),
                  color: const Color.fromARGB(255, 22, 20, 21),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      const Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1469598614039-ccfeb0a21111?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D'),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                              'user1')
                        ],
                      ),
                      const TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          label: Text(
                            'Tulis crita mu disini',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .start, //menempatkan semua widget di kanan(awal) sumbu vertikal
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.photo_library_outlined,
                                  color: Colors.white)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .end, //menempatkan semua widget di kiri (akhir) sumbu vertikal
                        children: [
                          Builder(builder: (context) {
                            return ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Homepage()));
                              },
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all<Color>(
                                  const Color.fromARGB(255, 30, 147, 211),
                                ),
                              ),
                              child: const Text(
                                'Posting',
                                style: TextStyle(
                                    color: Color.fromARGB(255, 31, 27, 28)),
                              ),
                            );
                          })
                        ],
                      )
                    ]),
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
