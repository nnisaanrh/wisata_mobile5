import 'package:flutter/material.dart';

class Formscreen6 extends StatefulWidget {
  const Formscreen6({super.key});

  @override
  State<Formscreen6> createState() => _Formscreen6State();
}

class _Formscreen6State extends State<Formscreen6> {
  bool switchValue = false;
  bool olahraga = false;
  bool seni = false;
  String selectedRadio = '';
  String nama = '';
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        title: Text("Tampilan Form"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (String Value) {
                setState(() {
                  nama = Value;
                });
              },
              controller: textEditingController,
              decoration: InputDecoration(
                labelText: 'Masukan Nama',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 2),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text('Jenis kelamin : '),
                Radio(
                    value: 'Laki-Laki',
                    groupValue: selectedRadio,
                    onChanged: (Value) {
                      setState(() {
                        selectedRadio = Value.toString();
                      });
                    }),
                Text('Laki-Laki'),
                Radio(
                    value: 'Perempuan',
                    groupValue: selectedRadio,
                    onChanged: (Value) {
                      setState(() {
                        selectedRadio = Value.toString();
                      });
                    }),
                Text('Perempuan'),
              ],
            ),
            SizedBox(height: 20),
            CheckboxListTile(
              title: Text('olahraga'),
              value: olahraga,
              onChanged: (value) {
                setState(() {
                  olahraga = value!;
                });
              },
            ),
            SizedBox(height: 20),
            CheckboxListTile(
              title: Text('seni'),
              value: seni,
              onChanged: (value) {
                setState(() {
                  seni = value!;
                });
              },
            ),
            SizedBox(height: 20),
            SwitchListTile(
              title: Text('Lulus'),
              value: switchValue,
              onChanged: (value) {
                setState(() {
                  switchValue = value;
                });
              },
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Submit'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
