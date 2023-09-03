import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/model/SoursesResponse.dart';


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
}