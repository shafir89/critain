import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:critain/post_class.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget id_template(id) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromARGB(255, 43, 37, 39),
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 14.0,
                  backgroundImage: NetworkImage(id.avatar),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Text(
                  id.username,
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
                        id.textPost,
                        style: TextStyle(fontSize: 14, color: Colors.white),
                      ),
                    ],
                  ),
                )
              ],
            ),
            if (id.image != null) ...[
              // ... adalah spread operator berguna untuk menambahkan beberapa widget ke dalam daftar anak-anak widget induk secara kondisional
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        child: Image(
                          image: AssetImage(id.image),
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
                Text(
                  '1.8k',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 12.0,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.comment, color: Colors.grey)),
                Text(
                  '755',
                  style: TextStyle(color: Colors.grey),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.bookmark_border_outlined),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        //mengatur isi dalam satu kolom tunggal sehingga dpt di scroll
        child: Column(
          children: user.map((id) => id_template(id)).toList(),
        ),
      ),
    );
  }
}
