import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mentalhealth_app/app_widget.dart';
import 'package:mentalhealth_app/shared/themes/app_colors.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(AppFirebase());
}

class AppFirebase extends StatelessWidget {
  final Future<FirebaseApp> _fbApp =
      Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TCC - nome',
      theme: ThemeData(primaryColor: AppColors.primary),
      home: FutureBuilder(
        future: _fbApp,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print("An error occurred. ${snapshot.error.toString()}");
            return Text('Something went wrong!');
          } else if (snapshot.hasData) {
            return AppWidget();
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
