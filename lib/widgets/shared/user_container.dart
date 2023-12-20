import 'package:flutter/material.dart';
import 'package:marver_heroes/domain/entities/usuario.dart';

class UserContainer extends StatelessWidget{

  final List<Usuario> usuarios;
  const UserContainer ({super.key, required this.usuarios});
  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemCount: usuarios.length,
      itemBuilder: (context, index) {
        Usuario usuario = usuarios[index];
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _CargarImagen(imageUrl: usuario.imagenUrl),
            Text("${usuario.nombre} ${usuario.apellido}"),
            Text(usuario.correo),
            // Puedes agregar más widgets para mostrar otros detalles del usuario
          ],
        );
      },
           
    );
  }
}


class _CargarImagen extends StatelessWidget{

  final String imageUrl;
  const _CargarImagen({required this.imageUrl});    

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [        
        Padding(
          padding: const EdgeInsets.all(3),
          child: CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),            
            radius: 50,
          ),          
        )
      ],
    );
  }  
}