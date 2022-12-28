import 'package:bmi_app/input_page.dart';
import 'package:bmi_app/result_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/result') {
          final args = settings.arguments as ResultPage;
          return MaterialPageRoute(
            builder: (context) {
              return ResultPage(
                bmiText: args.bmiText,
                bmiIntepretation: args.bmiIntepretation,
                bmiResult: args.bmiResult,
              );
            },
          );
        }
        assert(false, 'Need to implement ${settings.name}');
        return null;
      },
    );
  }
}
