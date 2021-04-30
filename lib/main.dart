import 'package:flutter/material.dart';
import './notifikasi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "notifikasi",
        style: TextStyle(
          color: Colors.black54,
        ),),
        actions: <Widget>[
          CircleAvatar(
            radius: 15.0,
            backgroundImage: NetworkImage("https://randomuser.me/api/portraits/women/77.jpg"),
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: notif.dummyData.length,
          itemBuilder: (context, index) {
            notif _model = notif.dummyData[index];
            return Column(
              children: <Widget>[
                Divider(
                  height: 25.0,
                ),
                ListTile(
                  leading: CircleAvatar(                    
                    radius: 15.0,
                    backgroundColor: Color.fromRGBO(139, 172, 253, 1.00),
                    child :Icon(
                    Icons.notifications_none_outlined,
                    color: Colors.white,
                    size: 20.0,                    
                    ),                    
                  ),                  
                  title: Row(
                    crossAxisAlignment: CrossAxisAlignment.start ,
                    children: <Widget>[
                      Text(_model.name),
                      SizedBox(
                        width: 16.0,
                      ),
                    ],
                  ),
                  subtitle: Container(child: Text(
                    _model.message,                   
                    )                                        
                    ),
                  trailing: Text(_model.datetime)
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}