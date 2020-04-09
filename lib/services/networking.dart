import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      String data = response.body;
      /* jsonDecode() is to convert the string of data into json */
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
