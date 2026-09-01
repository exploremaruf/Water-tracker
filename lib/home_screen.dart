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
  List<int> watercount = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade400,
      appBar: AppBar(
        backgroundColor: Colors.purple.shade400,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              GestureDetector(
                onTap: countreturner,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.purple.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 32,
                      horizontal: 64,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.blue, width: 5),
                      ),
                      child: GestureDetector(
                        onTap: countreturner,
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(24),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.water_drop_outlined,
                                    size: 40,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(height: 16),
                                  Text(
                                    'Press Here',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              SizedBox(
                width: 150,
                child: TextField(
                  textAlign: TextAlign.center,
                  controller: countTEcontroller,
                  style: TextStyle(fontSize: 24, color: Colors.white),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: 'Todays count',
                    labelStyle: TextStyle(color: Colors.white),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 3, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Divider(height: 1),
              SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'History',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    'Total Count:',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
              Expanded(
                child: ListView.builder(
                  primary: false,
                  itemCount: watercount.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(child: Text('${index+1}')),
                      title: Text(DateTime.now().toString(),style:
                        TextStyle(
                          color: Colors.white
                        ),),
                      trailing: Text(watercount[index].toString(),style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void countreturner() {
    // int dropcount = int.parse(countTEcontroller.text);
    // watercount.add(dropcount);
    // setState(() {});

    int glasscount = int.tryParse(countTEcontroller.text)??1;
    

    
  }








}
