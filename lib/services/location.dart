
import 'package:http/http.dart';
import 'dart:convert';
class Network_Helper{
  Network_Helper(this.urll);
  final String urll;
  Future<dynamic> getdata()async{
    Response response = await get(Uri.parse(urll));
    //print('this is api:----------> '+response.body);
    //TODO: here i learn how to access data from api body or response
    //print( response.statusCode);
    String data = response.body;
    var jd= jsonDecode(data);
    print(jd);
    print("status code: ");
    print(response.statusCode);
if(response.statusCode==200){
  return jsonDecode(data);
}
else{
  print(response.statusCode);
}

    var temperature_from_api=jd['main']['temp'];
    var coord_from_api=jd['coord']['lat'];
    var weather_from_api=jd['weather'][0]['description'];
    var weather_id=jd["weather"][0]["id"];
    var city_api= jd["name"];
    var country_name=jd["sys"]["country"];


  }
}
/*
https://chat.openai.com/share/c5c3cce6-6753-4a16-a9f0-5cd75efbd59c
*/