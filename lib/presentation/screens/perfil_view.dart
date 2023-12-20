import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:marver_heroes/presentation/providers/user_provider.dart';
import 'package:marver_heroes/widgets/shared/user_container.dart';
import 'package:provider/provider.dart';

class PerfilView extends StatelessWidget{

  const PerfilView ({super.key});
  
  @override
  Widget build(BuildContext context) {

    final userProvider = context.watch<UserProvider>();

    return Scaffold(
      appBar: AppBar(        
        title: const Text('Usuarios',),
        backgroundColor: Colors.green,        
        actions: [IconButton(            
            onPressed: () {userProvider.getUser();}, 
            tooltip: "Agregar Nuevo",
            iconSize: 40,
            icon: const Icon(MaterialCommunityIcons.account_multiple_plus)
        )
        ],
      ),
      body: UserContainer(usuarios: userProvider.usuarios)    
    );
  }  
}


