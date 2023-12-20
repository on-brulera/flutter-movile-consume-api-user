import 'package:flutter/material.dart';
import 'package:marver_heroes/presentation/providers/user_provider.dart';
import 'package:marver_heroes/presentation/screens/perfil_view.dart';
import 'package:provider/provider.dart';

void main() => runApp( const MyApp());


class MyApp extends StatelessWidget{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider())
      ],
      child: const MaterialApp(
        title: 'User',
        debugShowCheckedModeBanner: false,
        home:PerfilView()
      ),
    );
  }
  
}