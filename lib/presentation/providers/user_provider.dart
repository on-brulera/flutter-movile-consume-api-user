import 'package:flutter/material.dart';
import 'package:marver_heroes/config/helpers/get_user_answer.dart';
import 'package:marver_heroes/domain/entities/usuario.dart';

class UserProvider extends ChangeNotifier{
  List<Usuario> usuarios = [];

  Future<void> getUser() async{
    final Usuario newUser = await GetUserAnswer().getUser();
    usuarios.add(newUser);
    notifyListeners();
  }
}