import 'dart:convert';
import 'dart:developer';

import 'dart:io';

import 'package:http/http.dart';
import 'package:mychatai/src/utils/api_key/api_key.dart';

class Apis {
  static Future<String> getAnswer(String question) async {
 try{
   final res = await post(Uri.parse('https://api.edenai.run/v2/text/generation'), headers: {
     HttpHeaders.contentTypeHeader: ' application/json',
     HttpHeaders.authorizationHeader: 'Bearer $apiKey'
   }, body: jsonEncode(
       {
         "providers": "openai",
         "text": question,
         "max_tokens": 1000,
         "temperature": 0,
         "fallback_providers": ""

       }
   ));

   final data = await jsonDecode(res.body);

   log('res: ${res.body} + ${res.statusCode}');
    print(data['openai']['generated_text']);
    print(data['generated_text']);

    return data['openai']['generated_text'];


 }catch (e){
   log("Error: $e");
   return "some this worng";
 }

    // return data['choice'][0]['message']['content'];
  }
}


