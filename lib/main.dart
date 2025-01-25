import 'package:flutter/material.dart';
// import 'package:myapp/pages/image.dart';
import './pages/home.dart';
import 'package:camera/camera.dart';

// You should assign the value of availableCameras() to the cameras variable
// before using the camera in your app.
List<CameraDescription>? cameras;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 31, 92, 204)),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}
