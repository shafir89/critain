import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class notif extends StatefulWidget {
  const notif({super.key});

  @override
  State<notif> createState() => _notifState();
}

class _notifState extends State<notif> {
  bool light = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Notifikasi'),
        ),
        backgroundColor: Color.fromARGB(255,32,32,44),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Text('Izinkan Notifikasi',style: TextStyle(fontSize: 20,color: Colors.white),),
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
                          setState(() {
                            light =
                                value; //light akan diperbarui dgn nilai value
                          });
                        },
                        activeTrackColor: Color.fromARGB(225, 74, 134, 232),
                      )
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
