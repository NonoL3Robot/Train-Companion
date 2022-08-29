import 'package:fast_csv/fast_csv.dart' as fast_csv;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:train_checker/services/remote_service.dart';

import '../models/track.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Track? tracks;

  var isLoaded = false;

  @override
  void initState() {
    _loadCSV();
    super.initState();
    getData("TSE");
  }

  getData(tvs) async {
    tracks = await RemoteService().getTracks(tvs);
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
