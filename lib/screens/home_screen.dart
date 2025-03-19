import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          SizedBox(height: 50),
            TextField(
              // Empecher au cursor de clignoter
              showCursor: false,
              decoration: InputDecoration(
                filled:true,
                //fillColor: Color(0XFFD1E8D2),
                hintText: '  Rechercher dans les messages',
                prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
                // Pour ajouter un icone de profile (CircleAvatar)
                suffixIcon: Padding(
                  padding: EdgeInsets.all(8),
                  child: CircleAvatar(
                    backgroundColor: Colors.purple,
                    radius: 16,
                    child: Text('J', style: TextStyle(color: Colors.white)),
                  ),
                ),
                //border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(30)
                ),
              ),
             // textAlign: TextAlign.center,
            )
        ],
      ),
    );
  }
}