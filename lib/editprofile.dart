import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({super.key});

  @override
  State<Editprofile> createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 22, 20, 21),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 22, 20, 21),
          foregroundColor: Colors.white,
          title: const Text(
            'Edit Profile',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          color: const Color.fromARGB(255, 22, 20, 21),
          child: Container(
            height: 400,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                                    radius: 50.0,
                                    backgroundImage: NetworkImage(
                                        'https://images.unsplash.com/photo-1469598614039-ccfeb0a21111?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fHw%3D'),
                                  ),
                    ],
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      'Username',
                      style: TextStyle(color: Colors.white, fontSize: 17,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                 TextField(
                  style: TextStyle(color: Colors.white),
                  controller: TextEditingController(text: 'user1'),
  onChanged: (text) => {},
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5.0),
                    
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Row(
                  children: [
                    Text(
                      'Bio',
                      style: TextStyle(color: Colors.white, fontSize: 17,fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                 TextField(
                  maxLines: null,
                  style: TextStyle(color: Colors.white),
                  controller: TextEditingController(text:'Bio user\nIni adalah contoh bio user'),
  onChanged: (text) => {},


                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(5.0),
                    hintStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: 359,
                          child: FilledButton(
                            onPressed: () {},
                            child: const Text('Simpan'),
                            style: const ButtonStyle(
                                backgroundColor: WidgetStatePropertyAll(
                                    Color.fromARGB(255, 30, 147, 211))),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
