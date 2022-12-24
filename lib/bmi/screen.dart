import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(
        leading:  IconButton(onPressed: (){}, icon:  const Icon(Icons.menu)),
        elevation: 2.0,
        title: const Text("App Bar"), 
        actions: [
          IconButton(onPressed: (){}, icon:  Icon(Icons.search)),
            IconButton(onPressed: (){}, icon:  Icon(Icons.notifications)),
        ],
      ) , 
      body: Container( color: Colors.amber,
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Expanded (
             child: Container( color: Colors.blue,
               child: Row( mainAxisAlignment: MainAxisAlignment.start,
                 children: const [
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
                 ],
               ),
             ),
           ) ,
           Expanded(
             child: Container( color: Colors.white, 
             
               child: Row( mainAxisAlignment: MainAxisAlignment.start,
                 children: const [
                Text("data"),
                Text("data"),
                Text("data"),
                Text("data"),
                 ],
               ),
             ),
           ) ,
           
          ],
        ),
      ),
      
     );
  }
}