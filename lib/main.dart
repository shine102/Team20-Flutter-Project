import 'package:food_app/pages/food_list_page.dart';
import 'package:food_app/pages/main_page.dart';
import 'package:food_app/pages/sign_in_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import './pages/my_kitchen_page.dart';
import 'package:food_app/pages/profile_page.dart';
import '../provider_service/today_food_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/food-list",
      routes: {
        "/" : (context) => MainPage(),
        "/food-list": (context) => ChangeNotifierProvider<ToDayFoodProvider>(
          create: (_) => ToDayFoodProvider(),
          child: FoodListPage(),
        ),
      },
    );
  }
}
