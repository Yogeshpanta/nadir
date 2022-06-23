import 'package:flutter/material.dart';

class RequestPage extends StatefulWidget{
  State<RequestPage> createState() => _RequestPageState();
}




class _RequestPageState extends State<RequestPage> {

  // Initial Selected Value
  String dropdownvalue = 'Organic';

  // List of items in our dropdown menu
  var items = [
    'Organic',
    'Ingorganic',
    'Reusable',
    'Recycalable',
    'Others',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("select the items"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(

              // Initial Value
              value: dropdownvalue,

              // Down Arrow Icon
              icon: const Icon(Icons.keyboard_arrow_down),

              // Array list of items
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}