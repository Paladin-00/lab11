import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lab11/RoundedContainer.dart';
import 'package:provider/provider.dart';

import 'CornerSliders.dart';
import 'rounded_corners_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => RoundedCornersProvider(),
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('Rounded Corner Configurator')),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundedContainer(),
              SizedBox(height: 20),
              CornerSliders(),
            ],
          ),
        ),
      ),
    );
  }
}