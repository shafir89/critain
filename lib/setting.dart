import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Pengaturan extends StatefulWidget {
  const Pengaturan({super.key});

  @override
  State<Pengaturan> createState() => _PengaturanState();
}

class _PengaturanState extends State<Pengaturan> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 22, 20, 21),
          foregroundColor: Colors.white,
          title: const Text(
            'Pengaturan',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          color: const Color.fromARGB(255, 22, 20, 21),
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Notifikasi',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Switch(
                            //menampilkan toggle switch
                            value: light, //menentukan nilai saat ini
                            onChanged: (bool value) {
                              //dipanggil ketika mengubah nilai toggle
                              setState(
                                () {
                                  light =
                                      value; //light akan diperbarui dgn nilai value
                                },
                              );
                            },
                            activeTrackColor: Color.fromARGB(255, 30,147,211),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Ubah Kata Sandi',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.edit,
                                color: Color.fromARGB(255, 30,147,211),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  children: [
                    Text(
                      'Laporkan masalah atau beri umpan balik',
                      style: TextStyle(color: Colors.white, fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(height: 10.0,),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Ketik disini',hintStyle: TextStyle(color:Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(color: Colors.grey)
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FilledButton(onPressed: (){}, child: Text('Kirim',style: TextStyle(color: Color.fromARGB(255, 31, 27, 28)),),style:ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 30,147,211))),),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
