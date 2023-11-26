import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(
      DevicePreview(
        enabled: kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      // theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      home: const SafeArea(child: LoginScreen()),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                SizedBox(
                  // color: Colors.red,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: const LogoHeaderCard(),
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: const LoginForm(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LogoHeaderCard extends StatelessWidget {
  const LogoHeaderCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage(
            'lib/assets/bg.jpg',
          ),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.purple.withOpacity(0.9),
            BlendMode.darken,
          ),
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 200,
              ),
              const Icon(
                Icons.location_on_outlined,
                size: 80,
                color: Colors.white,
              ),
              Text(
                'VISON GO',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: Colors.white)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// loginform
class LoginForm extends StatelessWidget {
  const LoginForm({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Hosgeldiniz",
            style: TextStyle(
                color: Color.fromARGB(255, 89, 39, 176),
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          const Text("lutfen bilgileriniz ile giris yapainiz"),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: 'E- posta Adresinz',
            ),
          ),
          const SizedBox(height: 10.0),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Parola',
              suffixIcon: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons
                      .visibility, // Use Icons.visibility_off when password is visible
                ),
              ),
              // border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // remember  me
              Row(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (bool? value) {},
                  ),
                  const Text('Beni Harirla'),
                ],
              ),

              const Text("Sifremi Unuttum")
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: SizedBox(
              height: 50,
              width: 200,
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 1, 40, 236)
                          .withOpacity(0.9), // Shadow color
                      spreadRadius: 0, // Spread radius
                      blurRadius: 50, // Blur radius
                      offset: const Offset(-10, 10),
                    ),
                  ],
                ),
                child: FloatingActionButton.extended(
                  backgroundColor: const Color.fromARGB(255, 89, 39, 176),
                  foregroundColor: Colors.white,
                  onPressed: () {},
                  label: const Text(
                    "GiRiS  YAP",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
            ),
          ),

          //  stack
        ],
      ),
    );
  }
}
