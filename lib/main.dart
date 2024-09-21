import 'package:flutter/material.dart';
import 'package:flutter_widget_activity/Profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFF6E738E),
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 150),
              const Padding(
                padding: EdgeInsets.only(left: 40.0), // Add 20 pixels of space on the left
                child: Align(
                  alignment: Alignment(-1.00, 0.0), // Align to the left
                  child: Text('Sign In', style: TextStyle(
                      fontSize: 30,
                      color: Color(0xFF212529)
                      ,fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold
                  )
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 20.0), // Add 20 pixels of space on the left
                child: Align(
                  alignment: Alignment(0.0, 0.0), // Center align
                  child: Text('Sign in to proceed on scanning attendance', style: TextStyle(fontSize: 20, color: Color(0xFF212529)
                      ,fontFamily: 'Roboto',
                      fontWeight: FontWeight.w600
                  )),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 300, // Adjust the width as needed
                decoration: BoxDecoration(
                  color: Colors.white, // Background color of the TextField
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.deepPurple), // Border color
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Username',
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 300, // Adjust the width as needed
                decoration: BoxDecoration(
                  color: Colors.white, // Background color of the TextField
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.deepPurple), // Border color
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    labelText: 'Password',
                    counterStyle: const TextStyle(color: Colors.black    ,fontFamily: 'Roboto'),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: _togglePasswordVisibility,
                    ),
                  ),
                  obscureText: _obscureText, // To obscure the password input
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: 300, // Adjust the width as needed
                decoration: BoxDecoration(
                  color: Colors.transparent, // Background color of the TextField
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Colors.transparent), // Border color
                ),
                child: ButtonTheme(
                  minWidth: 300, // Adjust the width as needed
                  height: 100, // Adjust the height as needed
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Profile(), // Use Maincontroller, not Maincon
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE9ECEF), // Background color of the button
                    ),
                    child: const Text('Sign In',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600

                        )
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
