import 'package:flutter/material.dart';

class LearningLogin extends StatefulWidget {
  const LearningLogin({super.key});

  @override
  State<LearningLogin> createState() => _LearningLoginState();
}

class _LearningLoginState extends State<LearningLogin> {
  bool showLogin = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "GIGA",
                    style: TextStyle(fontSize: 30),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "By signing in your are agreeing",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'our',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        TextSpan(
                          text: ' Term and privacy policy',
                          style: TextStyle(color: Colors.blue, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  // login singin

                  SizedBox(
                    width: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              showLogin = true; // Show login content
                            });
                          },
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 20,
                              color: showLogin ? Colors.blue : Colors.black,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              showLogin = false; // Show register content
                            });
                          },
                          child: Text(
                            "Register",
                            style: TextStyle(
                              fontSize: 20,
                              color: !showLogin ? Colors.blue : Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  //   content  login  /signup
                  showLogin ? LoginForm() : RegisterForm(),

                  //  socialicons
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "or connect with",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  SizedBox(
                    width: 250,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          'lib/assets/Icons/facebook.png',
                          height: 40,
                          width: 40,
                        ),
                        Image.asset(
                          'lib/assets/Icons/instagram.png',
                          height: 40,
                          width: 40,
                        ),
                        Image.asset(
                          'lib/assets/Icons/pinterest.png',
                          height: 40,
                          width: 40,
                        ),
                        Image.asset(
                          'lib/assets/Icons/linkedin.png',
                          height: 40,
                          width: 40,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          Image.asset("lib/assets/curv.png"),
          SizedBox(
            height: 20,
          ),

          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "lib/assets/bg.png",
                height: 200,
                fit: BoxFit.cover,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "lib/assets/bg.jpg",
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 50, // Adjust the space between the images
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          AssetImage("lib/assets/Icons/linkedin.png"),
                    ),
                  ),
                  Image.asset(
                    "lib/assets/curv.png",
                    height: 100,
                    width: 500,
                    // fit: BoxFit.cover,
                  ),
                ],
              ),
            ],
          )

          // Stack(
          //   alignment: Alignment.topCenter,
          //   children: [
          //     Container(
          //       height: 250,
          //       width: MediaQuery.of(context).size.width,
          //       color: Colors.red,
          //     ),
          //     Positioned(
          //       bottom: 0,
          //       child: Container(
          //         height: 150,
          //         width: MediaQuery.of(context).size.width,
          //         decoration: BoxDecoration(
          //           color: Colors.blue, // Container color
          //           borderRadius: BorderRadius.vertical(
          //             bottom: Radius.circular(
          //                 -500), // Adjust the radius for top corners
          //           ),
          //         ),
          //       ),
          //     )
          //   ],
          // ),
        ],
      ),
    )));
  }
}

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
              isCollapsed: true,
              // border: UnderlineInputBorder(borderSide: BorderSide.none),
              labelText: 'Email Address',
              prefixIcon: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.mail_outlined,
                ),
              )),
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
              labelText: 'Password',
              suffixIcon: const Icon(Icons.remove_red_eye_outlined),
              prefixIcon: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.lock_outlined,
                ),
              )),
        ),
        const SizedBox(
          height: 20,
        ),
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
                const Text('Remember Password'),
              ],
            ),

            const Text(
              "Forget password",
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 300,
          child: FloatingActionButton.extended(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {},
              label: Text("Login")),
        ),
      ],
    );
  }
}

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
              isCollapsed: true,
              // border: UnderlineInputBorder(borderSide: BorderSide.none),
              labelText: 'User Name',
              prefixIcon: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.person_2_outlined,
                ),
              )),
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
              isCollapsed: true,
              // border: UnderlineInputBorder(borderSide: BorderSide.none),
              labelText: 'Email Address',
              prefixIcon: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.mail_outlined,
                ),
              )),
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
              labelText: 'Password',
              suffixIcon: const Icon(Icons.remove_red_eye_outlined),
              prefixIcon: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.lock_outlined,
                ),
              )),
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
              labelText: 'C-Password',
              suffixIcon: const Icon(Icons.remove_red_eye_outlined),
              prefixIcon: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.lock_outlined,
                ),
              )),
        ),
        SizedBox(
          height: 20,
        ),
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
                const Text('Remember Password'),
              ],
            ),

            const Text(
              "Forget password",
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 300,
          child: FloatingActionButton.extended(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {},
              label: Text("Register")),
        ),
      ],
    );
  }
}
