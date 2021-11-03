import 'package:api_class/model/new_api.dart';
import 'package:http/http.dart';

class ApiCall {
  String newUrl =
      'https://newsapi.org/v2/everything?q=tesla&from=2021-10-03&sortBy=publishedAt&apiKey=55c6cdfa6a4345278bb24c8d3052c58c';
  Future<NewsApiii> newsApi() async {
    try {
      final response = await http.post(Uri.parse(newUrl));
      // final response1 = await http.post(
      //   Uri.parse(newUrl),
      //   body: {
      //     'email': 'asasasa',
      //     'pword': 'dsbuds',
      //   },
      );
    } catch (e) {}
  }
}
