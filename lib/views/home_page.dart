import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:train_checker/services/remote_service.dart';
import 'package:csv/csv.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:fast_csv/fast_csv.dart' as fast_csv;
import 'package:fuzzywuzzy/fuzzywuzzy.dart';

import '../models/track.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Departure? departures;
  Track? tracks;

  var isLoaded = false;

  @override
  void initState() {
    _loadCSV();
    super.initState();
    getData("TSE");
  }

  // ${tracks!.trains[index].voie} => Numéro de la voie
  // ${Reformat().reformatDestination(departures!.departures[index].displayInformations.direction)} => Destination
  //
  getData(tvs) async {
    tracks = await RemoteService().getTracks(tvs);
    // departures = await RemoteService().getDepartures();
    if (tracks != null) {
      setState(() {
        isLoaded = true;
        debugPrint("getData ok");
      });
    }
  }

  Map<String, String> csvData = {};

  void _loadCSV() async {
    final rawData = await rootBundle.loadString("assets/gares.csv");
    final result = fast_csv.parse(rawData);
    for (final row in result) {
      csvData[row[0]] = row[1];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(),
        body: Visibility(
            visible: isLoaded,
            replacement: const Center(
              child: CircularProgressIndicator(),
            ),
            child: Column(
              children: [rechercheGare(), Expanded(child: listeGares())],
            )));
  }

  AppBar myAppBar() {
    return AppBar(
      title: Text(widget.title),
      actions: <Widget>[
        Center(
          child: Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: InkWell(
                onTap: () {
                  // isLoaded = false; pour cacher la liste le temps que ça
                  // charge
                  getData("TSE");
                },
                child: const Icon(
                  Icons.refresh,
                  size: 26.0,
                ),
              )),
        )
      ],
    );
  }

  Autocomplete rechercheGare() {
    return Autocomplete<String>(
        optionsBuilder: (TextEditingValue textEditingValue) {
      if (textEditingValue.text == '') {
        return const Iterable<String>.empty();
      }
      return csvData.keys.where((String option) {
        return option.contains(textEditingValue.text);
      });
      // TODO
      // améliorer l'algo de recherche, order code du dessus ou utiliser
      // celui de dessous
      // var extracted = extractTop(
      //     query: textEditingValue.toString(),
      //     choices: csvData.keys.toList(),
      //     limit: 5);
      // List<String> extractedList = [];
      // for (var extract in extracted) {
      //   extractedList.add(extract.choice);
      // }
      // return extractedList.where((element) => element.contains(textEditingValue.text));
    }, onSelected: (String selection) {
      var tvs = csvData[selection];
      getData(tvs);
      debugPrint('Gare : $selection, TVS : $tvs');
    });
  }

  ListView listeGares() {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Destination : ${tracks!.trains[index].origdest}"),
                Text("Départ : ${tracks!.trains[index].heure}"),
                Text("Voie : ${tracks!.trains[index].voie}"),
              ],
            ),
          );
        });
  }
}
