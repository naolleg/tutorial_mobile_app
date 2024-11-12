import 'package:http/http.dart' as http;
import 'package:tutorial_mobile_app/utils/shared_preference.dart';

class ServerInstance {
  static const String baseUrl = 'https://sample.com/api';
  static const String socketUrl = 'https://sample.com';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };

  static http.Client client = http.Client();

  static http.Client getClient() {
    return client;
  }

  static Future<void> updateHeadersWithToken() async {
    final token = await getToken();
    if (token != null) {
      headers['authorization'] = token;
    } else {
      headers.remove('authorization');
    }
  }
}
