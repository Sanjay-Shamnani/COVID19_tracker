import 'dart:convert';
import 'package:corona_tracker/models/corona_home.dart';
import 'package:corona_tracker/models/serializers.dart';
import 'package:http/http.dart' as http;

class Networking {
  Future<CoronaHome> getData() async {
    CoronaHome _result;
    var url = 'https://doh.saal.ai/api/live';
    var response = await http.get(url);

    if (response.statusCode == 200) {
      dynamic data = jsonDecode(response.body);
      _result =
          serializers.deserializeWith(CoronaHome.serializer, data);
    } else {
      throw Exception('connection error');
    }

    return _result;
  }
}
