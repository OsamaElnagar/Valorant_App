// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:valorant/data/web_services/web_services.dart';

class RepoLayer {
  final WebService apiProvider;

  RepoLayer({required this.apiProvider});

  Future<dynamic> getAgents() async {
    return apiProvider.getAgents();
  }
}
