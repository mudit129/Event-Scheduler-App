import 'package:flutter/material.dart';

class NewEventScreen extends StatefulWidget {
  const NewEventScreen({super.key});

  @override
  State<StatefulWidget> createState() => _NewEventScreen();
}

class _NewEventScreen extends State<NewEventScreen> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("New Event"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(

              children: [

                TextField(

                  controller: _textEditingController,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  cursorColor: Colors.black,
                  cursorHeight: 25,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.calendar_month,
                      color: Colors.black,
                    ),
                    labelStyle: TextStyle(color: Colors.white.withOpacity(0.9),
                                          fontSize: 30,
                                          fontStyle: FontStyle.italic),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0), borderSide: const BorderSide(width: 0, style: BorderStyle.none)),
                  ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Builder(
              builder: (context) {
                return ElevatedButton(onPressed: () {
                    String newEventText = _textEditingController.text;
                    Navigator.of(context).pop(newEventText);
                    },

                    style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black),
                    child: const Text("Add"),
                    );
              }
          ),
        ],
      ),
    );
  }
}
