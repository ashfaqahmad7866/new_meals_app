import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/categories.dart';
void main() {
  runApp(const MealsApp());
}
final theme= ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(251, 131, 57, 0),),textTheme: GoogleFonts.latoTextTheme());
class MealsApp extends StatelessWidget {
  const MealsApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     theme: theme,

      home:const CategoriesScreen(),
    );
  }
}

