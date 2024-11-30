import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class fitur extends StatelessWidget {
  const fitur({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fitur Pada Aplikasi'),
        ),
        backgroundColor: Color.fromARGB(255, 32,32,44),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: const Color.fromARGB(255, 233, 233, 233),
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: const Color.fromARGB(255, 233, 233, 233),
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Mengunggah teks dan gambar',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: const Color.fromARGB(255, 233, 233, 233),
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Memberi komentar',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: const Color.fromARGB(255, 233, 233, 233),
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Mengatur izin notifikasi',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: const Color.fromARGB(255, 233, 233, 233),
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Melihat postingan orang lain',
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 1.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        color: const Color.fromARGB(255, 233, 233, 233),
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Mencari postingan atau akun',
                            style: TextStyle(fontSize: 15),
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
      
    );
  }
}
