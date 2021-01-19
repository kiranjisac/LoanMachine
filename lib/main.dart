import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:loan_machine/injection.dart';

import 'presentation/core/my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);
  return runApp(MyApp());
}
