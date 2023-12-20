import 'package:dio/dio.dart';
import 'package:marver_heroes/domain/entities/usuario.dart';
import 'package:marver_heroes/infraestructure/models/fake_user_model.dart';


class GetUserAnswer{

  final Dio _dio = Dio();

  Future<Usuario> getUser() async{
    final response = await _dio.get("https://randomuser.me/api/");
    final usuarioModel = FakeUserModel.fromJson(response.data);
    return usuarioModel.toUsuarioEntity();
  }
}