import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


void main() {
  runApp(const Profile());
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Function to launch URL using Uri
  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $url';
    }
  }

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[250],
      appBar: AppBar(
        title: const Text(
          "Student Profile 1",
          style: TextStyle(
            fontFamily: "Roboto",
            fontSize: 24,
            color: Colors.white,
            letterSpacing: 2.0,
          ),
        ),
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: [
                Positioned.fill(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2.0,
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 100,
                        backgroundImage: const AssetImage("assets/images/profile.jpg"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Name: Frouen M. Medina Jr.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "About Me: Hi my name is Frouen M. Medina Jr, I love to play games and build projects. "
                    "Also a president of the BITS club in our university institution. "
                    "I am a freelance programmer and also building personal projects for fun. "
                    "I love attending tech events and workshops to gain and share knowledge.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Age: 21",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Course: Bs in Information Technology",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Year: 3",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Email: medinajrfrouen@gmail.com",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Phone: 09912093870",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Address: Tinikling St, San Francisco De Asis, Matina Crossing",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Country: Philippines",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                _launchURL('https://wendevlife.github.io/MyPortfolio/?fbclid=IwY2xjawFGedtleHRuA2FlbQIxMAABHWQpcY19PUPc1PdK_ZL7Dxtofdj4pLNPST1SEC4ygmloOcCxzmc5X5vJWg_aem_aWeiL8bK75HX0SeHoWxH7A'); // Your portfolio link
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "My Portfolio: Click Me!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto",
                    color: Colors.blue, // Indicate that it's clickable
                    decoration: TextDecoration.underline, // Underline to show it's clickable
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Programming Skills:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Roboto",
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Image(
                      image: AssetImage("assets/images/flutter.png"),
                      width: 50,
                      height: 50,
                    ),
                    Image(
                      image: AssetImage("assets/images/dart.png"),
                      width: 50,
                      height: 50,
                    ),
                    Image(
                      image: AssetImage("assets/images/firebase.png"),
                      width: 50,
                      height: 50,
                    ),
                    Image(
                      image: AssetImage("assets/images/python.png"),
                      width: 50,
                      height: 50,
                    ),
                    Image(
                      image: AssetImage("assets/images/java.png"),
                      width: 50,
                      height: 50,
                    ),
                    Image(
                      image: AssetImage("assets/images/c++.png"),
                      width: 50,
                      height: 50,
                    ),
                    Image(
                      image: AssetImage("assets/images/mongodb.png"),
                      width: 50,
                      height: 50,
                    ),
                    Image(
                      image: AssetImage("assets/images/mysql.png"),
                      width: 50,
                      height: 50,
                    ),
                    Image(
                      image: AssetImage("assets/images/compose.png"),
                      width: 50,
                      height: 50,
                    ),
                    Image(
                      image: AssetImage("assets/images/html.png"),
                      width: 50,
                      height: 50,
                    ),
                    Image(
                      image: AssetImage("assets/images/css.png"),
                      width: 50,
                      height: 50,
                    ),
                    Image(
                      image: AssetImage("assets/images/js.png"),
                      width: 50,
                      height: 50,
                    ),
                    Image(
                      image: AssetImage("assets/images/gitpush.png"),
                      width: 50,
                      height: 50,
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "My Social Media Accounts:",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Social Media Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // GitHub Icon
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.github),
                    color: Colors.black,
                    iconSize: 40,
                    onPressed: () {
                      _launchURL('https://github.com/WenDEVLIFE');
                    },
                  ),
                  const SizedBox(width: 16),
                  // LinkedIn Icon
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.linkedin),
                    color: Colors.blue,
                    iconSize: 40,
                    onPressed: () {
                      _launchURL('https://www.linkedin.com/in/frouen-medina-4b1171175/');
                    },
                  ),
                  const SizedBox(width: 16),
                  // Facebook Icon
                  IconButton(
                    icon: const FaIcon(FontAwesomeIcons.facebook),
                    color: Colors.blueAccent,
                    iconSize: 40,
                    onPressed: () {
                      _launchURL('https://www.facebook.com/frouen.medina');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}