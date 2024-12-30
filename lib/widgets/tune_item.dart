import 'package:flutter/material.dart';
import 'package:tunes_app/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.tuneModel});
  final TuneModel tuneModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: tuneModel.playSound(),
        child: Container(
          color:tuneModel.color 
        ),
      ),
    );
  }
}