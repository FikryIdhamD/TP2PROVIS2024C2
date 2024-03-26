import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/gestures.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final String _myText = 'register';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: IconButton(
      //     icon: Icon(Icons.close),
      //     onPressed: () {},
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              ClipPath(
                clipper: OvalTopClipper(),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  color: Color(0xFF0B8FAC), // Warna oval
                  child: Center(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        double fontSize = constraints.maxWidth *
                            0.05; // Menggunakan persentase lebar layar untuk menentukan ukuran font
                        return Text(
                          'Enter your account\ninformation',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            fontFamily:
                                "Poppins", // Mengatur font menjadi Poppins
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).padding.top,
                left: 8.0,
                child: IconButton(
                  icon: Icon(Icons.close),
                  color: Colors.white,
                  onPressed: () {
                    // Tindakan ketika tombol X ditekan
                  },
                ),
              ),
            ]),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Text(
                          "Login",
                          style:
                              TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      RichText(
          textAlign: TextAlign.start,
          text: TextSpan(
            children: [
        TextSpan(
          text: 'To access more features please enter your username and password or ',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        TextSpan(
          text: 'register',
          style: TextStyle(
            color: Colors.blue,
            decoration: TextDecoration.underline,
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              // Tindakan yang diambil ketika teks "register" diklik
              // Misalnya, pindah ke halaman pendaftaran
              // Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage()));
            },
        ),
        TextSpan(
          text: ' if you don\'t have an account',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
            ],
          ),
        ),
        
                      
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Phone Number*", style: TextStyle(
                              fontStyle: FontStyle.italic,
                            ),),
                            TextField(
                                
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Align(alignment: Alignment.center,child: ElevatedButton(onPressed: () {}, child: Text("Login")))
                      
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OvalTopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.7);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height * 0.7);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
