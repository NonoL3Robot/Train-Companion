import '../models/track.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<Track?> getTracks(String tvs) async {
    String urlTrack =
        'https://www.garesetconnexions.sncf/fr/train-times/$tvs/departure';

    var client = http.Client();
    var uri = Uri.parse(urlTrack);
    var response = await client.get(uri);
    if (response.statusCode == 200) {
      var json = response.body;
      return trackFromJson(json);
    }
    return null;
  }
}
