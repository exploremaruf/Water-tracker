import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController countTEcontroller = TextEditingController(
    text: '1',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Text(
                'Press Here to Track Water Count',
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 8),
              Text('Today\'s Count:', style: TextStyle(fontSize: 16)),
              SizedBox(height: 8),

              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Colors.amber, width: 5),
                ),
                child: Padding(
                  padding: EdgeInsets.all(24),
                  child: Icon(
                    Icons.water_drop_outlined,
                    size: 40,
                    color: Colors.blue,
                  ),
                ),
              ),
              SizedBox(
                width: 60,
                child: TextField(
                  controller: countTEcontroller,
                  style: TextStyle(fontSize: 24),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
