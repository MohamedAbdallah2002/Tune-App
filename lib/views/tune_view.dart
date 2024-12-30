import 'package:flutter/material.dart';
import 'package:tunes_app/models/tune_model.dart';
import 'package:tunes_app/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});
  final List<TuneModel> tunes=const[
    TuneModel(sound: "note1.wav", color: Colors.red),
    TuneModel(sound: "note2.wav", color: Colors.orange),
    TuneModel(sound: "note3.wav", color: Colors.yellow),
    TuneModel(sound: "note4.wav", color: Colors.green),
    TuneModel(sound: "note5.wav", color: Colors.blueAccent),
    TuneModel(sound: "note6.wav", color: Colors.lightBlueAccent),
    TuneModel(sound: "note7.wav", color: Colors.purple),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tune App",
        style: TextStyle(
          color: Colors.white,
        ),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xff253238),
      ),
      body: Column(
        children: tunes.map((e) => TuneItem(tuneModel: e)).toList(),
      ),
    );
  }
}
