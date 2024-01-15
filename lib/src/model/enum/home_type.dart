

import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mychatai/src/fereture/ai_image_creater.dart';
import 'package:mychatai/src/fereture/chat_bot/chat_bot.dart';
import 'package:mychatai/src/utils/image_constrant/image_constrant.dart';

enum HomeType { aiChatBot, aiImage, aiTranslator }

extension MyHomeType on HomeType{
   String get title => switch(this){

     // TODO: Handle this case.
     HomeType.aiChatBot => "AI Chat Bot",
     // TODO: Handle this case.
     HomeType.aiImage => "AI Image Creator",
     // TODO: Handle this case.
     HomeType.aiTranslator => "Language Translator",
   };

   String get lotti => switch(this){

   // TODO: Handle this case.
     HomeType.aiChatBot => onBoaringImageOne,
   // TODO: Handle this case.
     HomeType.aiImage => onBoaringImageOne,
   // TODO: Handle this case.
     HomeType.aiTranslator => onBoaringImageOne,
   };

   VoidCallback get onTap => switch(this){

   // TODO: Handle this case.
     HomeType.aiChatBot =>()=> Get.to(()=> ChatBot()),
   // TODO: Handle this case.
     HomeType.aiImage =>() => Get.to(()=>ChatBot()),
   // TODO: Handle this case.
     HomeType.aiTranslator =>()=> Get.to(()=>ChatBot()),
   };
}


