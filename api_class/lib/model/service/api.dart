import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:api_class/model/service/sunshine.dart';
import 'package:http/http.dart' as http;

class ApiCall {
  final String _nointernet = "No internet connection";
  final String _timeMsg = "Request timeout, connect to a better network";
  final String msg = "An error occured: ";
  static const String apiKey = "8b06d860e8944eb988d2145ab362c0f2";
  String newsUrl =
      "https://newsapi.org/v2/everything?q=tesla&from=2021-10-04&sortBy=publishedAt&apiKey=55c6cdfa6a4345278bb24c8d3052c58c";

  Future<Sunshine> newsApi() async {
    try {
      final response = await http.get(Uri.parse(newsUrl)).timeout(
            const Duration(seconds: 60),
          );
      // print(response.body);
      if (response.statusCode == 200) {
        var convert = json.decode(response.body);
        if (convert.toString().isNotEmpty && response.statusCode == 200) {
          Sunshine sunshine = Sunshine.fromJson(convert);

          return sunshine;
        }
        return Sunshine.fromJson(jsonDecode(response.body));
      } else {
        return Sunshine(msg: response.reasonPhrase, status: "Failed");
      }
    } on SocketException catch (_) {
      return Sunshine(msg: _nointernet, status: "Failed");
    } on TimeoutException catch (_) {
      return Sunshine(msg: _timeMsg, status: "Failed");
    } catch (e) {
      return Sunshine(status: "Failed", msg: msg + '$e');
    }
  }
}

// import 'dart:convert';

// import 'package:api_class/model/new_api.dart';
// import 'package:http/http.dart';

// class ApiCall {
//   String newUrl =
//       'https://newsapi.org/v2/everything?q=tesla&from=2021-10-03&sortBy=publishedAt&apiKey=55c6cdfa6a4345278bb24c8d3052c58c';
//   Future<NewsApiii> newsApi() async {
//     try {
//       final response = await http.post(Uri.parse(newUrl));
//       if (response.statusCode == 200){
//         var convert = json.decode(response.body);
//         if (convert.toString().isNotEmpty && response.statusCode == 200){
//           NewsApiii = newsApi = NewsApiii.fromJson(convert);
//         }
//         return NewsApiii.fromJson(jsonDecode(response.body));
//       }
//       // final response1 = await http.post(
//       //   Uri.parse(newUrl),
//       //   body: {
//       //     'email': 'asasasa',
//       //     'pword': 'dsbuds',
      
//       //   },
//       );
//     } catch (e) {}
//   }
// }
