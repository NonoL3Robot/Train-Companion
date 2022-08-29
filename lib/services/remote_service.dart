import '../models/track.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  // static String URL_DEPARTURE = "https://6c8f4b32-2f04-48f2-a346-68ffcab3a20a@api.sncf.com/v1/coverage/sncf/stop_areas/stop_area:SNCF:87611004/departures";

  Future<Track?> getTracks(String tvs) async {
    // String tvs = 'TSE';
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

// Future<Departure?> getDepartures() async {
//   var client = http.Client();
//
//   var uri = Uri.parse(URL_DEPARTURE);
//   var response = await client.get(uri);
//   if (response.statusCode == 200) {
//     var json = response.body;
//     return departureFromJson(json);
//   }
// }
}
