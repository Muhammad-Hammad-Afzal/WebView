import 'package:flutter/material.dart';
import 'package:open_web_app/open_web.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: false,
        title: const Text('Dashboard', style: TextStyle(color: Colors.white, fontSize: 25),),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(

            children: [
              SizedBox(height: 20),

              Text(
                  'Open Any WebLink In App Without Opening Browser.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.red, fontSize: 25)),
              SizedBox(height: 50),

              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:
                        (_) => const OpenWeb(title: 'Pub Dev', url: "https://www.pub.dev",)));
                  },
                  child: Text('Pub Dev', style: TextStyle(fontSize: 20),)),
              SizedBox(height: 15),

              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:
                        (_) => const OpenWeb(title: 'Google', url: "https://www.Google.com",)));
                  },
                  child: Text('Google', style: TextStyle(fontSize: 20),)),
              SizedBox(height: 15),

              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:
                        (_) => const OpenWeb(title: 'Facebook', url: "https://www.Facebook.com",)));
                  },
                  child: Text('Facebook', style: TextStyle(fontSize: 20))),
              SizedBox(height: 15),

              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:
                        (_) => const OpenWeb(title: 'Youtube', url: "https://www.youtube.com",)));
                  },
                  child: Text('Youtube', style: TextStyle(fontSize: 20))),
            ],
          ),
        ),
      ),
    );
  }
}
