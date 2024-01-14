import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class Pref {
   static late Box _box;

   static Future<void> initialize()async{
     final dir = await getApplicationDocumentsDirectory();
     Hive.defaultDirectory = dir.path;
     _box = Hive.box(name: 'MyBox');
   }

   static bool get showOnBoarding =>
     _box.get('showONBoarding',defaultValue: true);

   static set showOnBoarding(bool value)=> _box.put('showONBoarding', value);


}