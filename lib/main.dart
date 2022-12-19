import 'package:event_schedular/new_event.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  final List<String> _list = [
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.grey[700],
          appBar: AppBar(
            title: const Text("Event Scheduler"),
            backgroundColor: Colors.black87,
          ),
          body: Padding(
            padding: const EdgeInsets.all(20),


            child: ListView.builder(

                itemCount: _list.length,
                itemBuilder: (context,index) {

                  return Card(
                      margin: const EdgeInsets.all(15),
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.circular(15.0)),
                      child: Center(
                        child: Text(

                          _list[index].toString(),
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20,
                              fontStyle: FontStyle.normal,
                            height: 1.5
                          ),
                        ),
                      ),

                  );
                }),
          ),
          floatingActionButton: Builder(
              builder: (context){

                return FloatingActionButton(
                  onPressed: () async {
                    String newText = await Navigator.of(context).push(MaterialPageRoute(builder: (context) => const NewEventScreen()));
                    setState(() {
                      _list.add(newText);
                    });
                  },
                  backgroundColor: Colors.black,

                  child: const Icon(

                    Icons.add,
                    color: Colors.white,
                  ),
                );
              }
          ),
        )
    );
  }
}


