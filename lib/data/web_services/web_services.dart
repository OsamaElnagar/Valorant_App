import 'package:http/http.dart' as http;
import 'package:valorant/const/const.dart';

class WebService {
  Future<dynamic> getAgents() async {
    final response = await http.get(
      Uri.parse(baseUrl + agentsEndPoint),
    );
    return response;
  }
}
