import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/model/NewsDataResponse.dart';
import 'package:news/model/SoursesResponse.dart';
import 'package:news/shared/componants/constans.dart';


class ApiManager{
  static Future<SoursesResponse> getSources() async {
    Uri url=Uri.https("newsapi.org","/v2/top-headlines/sources",{
      "apiKey":"58d50e0dde6f4d5685151a053882f52f"
    }

    );
    var response =await http.get(url);
    print(response.body);
    var jasonData=jsonDecode(response.body);
    SoursesResponse soursesResponse=SoursesResponse.fromJson(jasonData);
    return soursesResponse;


  }

  static Future<NewsDataResponse> getNewsData(String sourceId) async {
    Uri uri=Uri.https(Constants.Base_Url,"/v2/everything",
    {"apiKey":Constants.Api_Key,"sources":sourceId});
   var response=await http.get(uri);
   var jsonData=jsonDecode(response.body);
   NewsDataResponse newsDataResponse=NewsDataResponse.fromJson(jsonData);
   return newsDataResponse;



  }
}