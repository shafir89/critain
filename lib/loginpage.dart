import 'package:flutter/material.dart';
import 'package:critain/bottomnav.dart';

class Aplikasi extends StatefulWidget {
  const Aplikasi({super.key});

  @override
  State<Aplikasi> createState() => _AplikasiState();
}

class _AplikasiState extends State<Aplikasi> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final _formGlobalKey = GlobalKey<FormState>(); //agar bisa menggunakan metode yang dibutuhkan
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 31, 27, 28),
            body: 
            
            SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0,80,0,0),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Image(
                            image: AssetImage('assets/sosial.jpeg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30,10,30,30),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Mulai Crita Sesukamu',
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                  fontSize: 27,
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 25.0,
                          ),
                          Form(
                            key: _formGlobalKey,
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 290,
                                  child: TextFormField(
                                    controller: _username,
                                    decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30.0)),
                                          borderSide:
                                              BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
                                        ),
                                        filled: true,
                                        errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red), borderRadius: BorderRadius.all(Radius.circular(30.0))),
                                        fillColor: Colors.white,
                                        hintText: 'Username',
                                        errorStyle: TextStyle(color: Colors.white)),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Username harus diisi';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 10.0,
                                ),
                                SizedBox(
                                  width: 290,
                                  child: TextFormField(
                                    obscureText: _isObscure,
                                    controller: _password,
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(30.0),
                                          ),
                                        ),
                                        filled: true,
                                        errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.red), borderRadius: BorderRadius.all(Radius.circular(30.0))),
                                        fillColor: Colors.white,
                                        hintText: 'Password',
                                        suffixIcon: IconButton(
                                      icon: Icon(
                                        _isObscure
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        color: Colors.grey,
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _isObscure = !_isObscure;
                                        });
                                      },
                                    ),
                                  

                      
                                        errorStyle: TextStyle(color: Colors.white)),
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'Password harus diisi';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                const SizedBox(
                                  height: 20.0,
                                ),
                                SizedBox(
                                  height: 54,
                                  width: 290,
                                  child: Builder(
                                    builder: (context) {
                                      return ElevatedButton(
                                          style: ButtonStyle(
                                            backgroundColor:
                                                WidgetStateProperty.all<
                                                    Color>(
                                              const Color.fromARGB(
                                                  255, 30,147,211),
                                            ),
                                          ),
                                          onPressed: () {
                                            if (_formGlobalKey.currentState!
                                                .validate()) {
                                              if (_username.text == 'user1' ||
                                                  _password.text ==
                                                      'user1234') {
                                                Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        Homepage(),
                                                  ),
                                                );
                                              } else {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  const SnackBar(
                                                    content: Text(
                                                        'Username atau Password salah'),
                                                  ),
                                                );
                                              }
                                            }
                                          },
                                          child: const Text(
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20),
                                              'Masuk'));
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          // ),
        ),
      ),
    );
  }
}
