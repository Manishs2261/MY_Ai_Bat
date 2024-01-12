import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mychatai/src/fereture/home_page/home_page.dart';
import 'package:mychatai/src/fereture/splash_screen/splash_screen.dart';
import 'package:mychatai/src/utils/helper/helper_class.dart';

void main()async{

  WidgetsFlutterBinding.ensureInitialized();
  //using for lonch screen full mode
 await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
 await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp,DeviceOrientation.portraitDown]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    mediaquery = MediaQuery.sizeOf(context);

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}


