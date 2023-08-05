import 'dart:convert';
import 'package:http/http.dart' as http;
String? token;

String environment = 'narayana.carnivalsb.nslhub.com';

// Map<String, String> getHeaders() {
//   return {'Content-Type': 'application/json', 'Accept': 'application/json', 'Accept-Language': 'EN'};
// }

Map<String, String> getHeaders() {
  return {
    'Authorization': 'Bearer $token',
    'Accept-Language': 'en',
    'Content-Type': 'application/json',
    'Accept': 'application/json, text/plain, */*',
  };
}

Future getUserToken() async {
  try {
    var requestBody = jsonEncode(<String, String>{
      "userName": "usercco",
      "encryptedPassword":
          "dWGA9eA1oWK4PDAgnOSPt1epXHRoeA7mZ1G0lLwryHt5Zrtv0F+07uwXlm2dtr63c5aD30tmUv07RjufZWP+H4pfuXB5Ka5Ujy7y8Nf0yJm/M7sZ9xd17xx+mmQP0ayhj3auvjNkj23fa+25onpxTHs1NLwnV1RWgh8dfzACou8=",
      "tenantName": "apiqa2912preqa",
      "clientId": "apiqa2912preqa",
      "guestUserId": ""
    });
    var requestBodyNarayana = jsonEncode(<String, String>{
      "userName": "nischay",
      "encryptedPassword":
          "dmTnOW8a11hCxfFvqtTU/sV7qBtTU/DNiqQiJ8/WtnlIFY85tNk3aGSHKeXIjZ5q96tDFWXl8lKkk3+WRsup9T0LpAuU5RKhGQzF4irTkkl3v51HKzjaJHeUadDXf5eHiU23PDtY2/m4TxScGFhUcXPBaROZB6ZBBhZ0o7UUxtU=",
      "tenantName": "narayana",
      "clientId": "narayana",
      "guestUserId": ""
    });
    var response = await http.post(
      Uri.parse('https://narayana.carnivalsb.nslhub.com/dsd-orch/nsl-iam/api/login/v2/login-action'),
      headers: getHeaders(),
      body: requestBodyNarayana,
    );
    switch (response.statusCode) {
      case 200:
        // logger.d('Logged in successfully', stackTrace: StackTrace.empty);
        var jsonTransaction = jsonDecode(response.body);
        token = jsonTransaction['result']['access_token'];
        break;
      default:
        throw Exception(response.statusCode);
    }
  } catch (e, s) {
    print('Error in fetching user token. $e');
  }
}
