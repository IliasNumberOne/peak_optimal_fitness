import 'package:flutter/material.dart';
import 'package:peak_optimal/services/services.dart';

class WorkoutProvider extends ChangeNotifier {
  final PreferencesService _preferencesService;

  WorkoutProvider({
    required PreferencesService preferencesService,
  }) : _preferencesService = preferencesService;
}
