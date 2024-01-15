import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:mychatai/src/data/api_data/api_data.dart';
import 'package:mychatai/src/fereture/chat_bot/controller/chat_controller.dart';
import 'package:mychatai/src/model/enum/home_type.dart';
import 'package:mychatai/src/utils/helper/helper_class.dart';
import 'package:mychatai/src/utils/helper/pref.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    Pref.showOnBoarding = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    // Apis.getAnswer("hii");

    return Scaffold(

      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        title: Text("My Ai "),
        actions: [
          IconButton(
            padding: EdgeInsets.only(right: 10),
              onPressed: (){}, icon: Icon(Icons.brightness_2))
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal:  mediaquery.width * .01,vertical: mediaquery.height * .01),
        children: HomeType.values.map((e) =>HomeCard(homeType: e,) ).toList(),

      ).animate().fade(duration: GetNumUtils(2).seconds),

    );
  }
}

class HomeCard extends StatelessWidget {

  final HomeType homeType ;

  const HomeCard({
    super.key,
    required this.homeType
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amberAccent.withOpacity(.2),
      elevation: 0,
      child: InkWell(
        onTap: homeType.onTap,
        child: Row(
          children: [
            Lottie.asset(homeType.lotti,width: mediaquery.width * 0.35),
           Spacer(),
            Text(homeType.title,style: TextStyle(fontSize: 24,letterSpacing: 1),),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}
