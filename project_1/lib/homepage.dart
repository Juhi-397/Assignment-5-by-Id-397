import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(home: Homepage()));
}

class Homepage extends StatelessWidget{
  const Homepage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("HOMEPAGE"),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.black,
        //leading:Icon(Icons.home),
        actions: [
             IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Settings button clicked")),
              );
            },
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Profile button clicked")),
              );
            },
            icon: const Icon(Icons.person),
          ),
        ],
      ),
      drawer:NavigationDrawer(
        children: [
          DrawerHeader(
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blueGrey),
              accountName: Text("Rehana Parvin Juhi"), 
              accountEmail: Text("parvinjuhi387@gmail.com"),
            ),
          ),
          ListTile(
            onTap: (){},
            leading: Icon(Icons.home),
            title: Text("Homepage"),
          ),
          Divider(),
          ListTile(
            onTap: (){},
            leading: Icon(Icons.person),
            title: Text("Profile"),
          ),
          Divider(),
          ListTile(
            onTap: (){},
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blueGrey,
        foregroundColor: Colors.white,
        shape: CircleBorder(),
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Text(
          "Hello Flutter",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            color:Colors.green,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}