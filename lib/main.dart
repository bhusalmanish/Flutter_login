// import 'package:device_preview/device_preview.dart';
// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter__login/Login/Curv_login.dart';
import 'package:flutter__login/Login/Learning_Login.dart';
import 'package:flutter__login/Login/Vison_Go.dart';

//  main App with device_preview

// void main() => runApp(
//       DevicePreview(
//         enabled: !kReleaseMode,
//         builder: (context) => MyApp(), // Wrap your app
//       ),
//     );
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       locale: DevicePreview.locale(context),
//       builder: DevicePreview.appBuilder,
//       // theme: ThemeData.light(),
//       // darkTheme: ThemeData.dark(),
//       home: const SafeArea(child: LoginScreen()),
//     );
//   }
// }

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Builder Example',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/page1': (context) => Vison_GO(),
        '/page2': (context) => LearningLogin(),
        '/page3': (context) => CurvLogin(),
      },
    );
  }
}

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const CurvLogin();
//   }
// }

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Login Design'),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('  Login Screen ${index + 1}'),
            onTap: () {
              switch (index) {
                case 0:
                  Navigator.pushNamed(context, '/page1');
                  break;
                case 1:
                  Navigator.pushNamed(context, '/page2');
                  break;
                case 2:
                  Navigator.pushNamed(context, '/page3');
                  break;
                default:
                  break;
              }
            },
          );
        },
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: Center(
        child: Text('This is Page 3'),
      ),
    );
  }
}
