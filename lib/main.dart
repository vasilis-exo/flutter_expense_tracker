import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

import 'package:expense_tracker/widgets/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

var kColorSchemeDark = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  // This is required to ensure that the platform services are initialized.
  // WidgetsFlutterBinding.ensureInitialized();

  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]).then((fn) => {
  // Run the app only after the platform services have been initialized.
  runApp(MaterialApp(
    title: 'Expense Tracker',
    darkTheme: ThemeData().copyWith(
      useMaterial3: true,
      colorScheme: kColorSchemeDark,
      cardTheme: const CardTheme().copyWith(
        margin: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 8,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kColorSchemeDark.primaryContainer,
          textStyle: const TextStyle(
            fontSize: 16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      iconTheme: IconThemeData(
        color: kColorSchemeDark.onPrimaryContainer,
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          color: kColorSchemeDark.onPrimaryContainer,
        ),
        labelStyle: TextStyle(
          color: kColorSchemeDark.onPrimaryContainer,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: kColorSchemeDark.onPrimaryContainer,
          ),
        ),
      ),
      textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: kColorSchemeDark.onPrimaryContainer,
            ),
            bodyLarge: TextStyle(
              color: kColorSchemeDark.onPrimaryContainer,
            ),
            bodyMedium: TextStyle(
              color: kColorSchemeDark.onPrimaryContainer,
            ),
            labelLarge: TextStyle(
              color: kColorSchemeDark.onPrimaryContainer,
            ),
            titleMedium: TextStyle(
              color: kColorSchemeDark.onPrimaryContainer,
            ),
          ),
    ),
    theme: ThemeData().copyWith(
      useMaterial3: true,
      colorScheme: kColorScheme,
      appBarTheme: const AppBarTheme().copyWith(
        backgroundColor: kColorScheme.onPrimaryContainer,
        foregroundColor: kColorScheme.primaryContainer,
      ),
      cardTheme: const CardTheme().copyWith(
        color: kColorScheme.secondaryContainer,
        margin: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 8,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kColorScheme.primaryContainer,
          textStyle: const TextStyle(
            fontSize: 16,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),
      textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: kColorScheme.onSecondaryContainer,
            ),
          ),
    ),
    themeMode: ThemeMode.system,
    home: const Expenses(),
  ));
  // });
}
