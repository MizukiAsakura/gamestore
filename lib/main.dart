import 'package:flutter/material.dart';
import 'package:gamestore/l10n/app_localizations.dart';
import 'package:gamestore/ui/home/home.dart';


void main(){
  runApp(const GameStoreApp());
}

class GameStoreApp extends StatelessWidget {
  const GameStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppLocalizations.of(context)?.app_title,
      debugShowCheckedModeBanner: false,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      home: HomePage()
    );
  }
}
