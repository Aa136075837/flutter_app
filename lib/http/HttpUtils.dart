import 'dart:io';
import 'dart:convert';

class HttpUtils {
  static get() async {
    var url =
        "https://way.jd.com/jisuapi/search?keyword=白菜&num=10&appkey=cb0dd6e182f68fc3cda15fe64f505c16";
    var httpClient = new HttpClient();
    var request = await httpClient.getUrl(Uri.parse(url));
    var response = await request.close();
    if (response.statusCode == HttpStatus.ok) {
      var json = await response.transform(utf8.decoder).join();
      var data = jsonDecode(json);
      print(data);
    }
  }
}
