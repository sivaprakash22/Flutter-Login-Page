import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';


class ProfilePage extends StatelessWidget{
  final String email;
  const ProfilePage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        child:Scaffold(
        appBar: AppBar(
          //title: const Text('Profile'),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: (){
                //--------logout---
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder:(context)=> LoginDemo()),
                      (route)=>false,
                );
              },
            )
          ],
        ),
        body:  Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/avatar.png'),
                ),
                const SizedBox(height: 20,),
                const Text('Name : Siva',
                    style: TextStyle(fontSize:20)
                ),
                const SizedBox(height: 10,),
                const Text(
                  'Age:23',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 10,),
                const Text('Position:Software Engineer',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 20,),
                Text(
                  'Email:$email',
                  style: const TextStyle(fontSize: 20),
                )






              ]
          ),
        ),
      )
    );
  }

}