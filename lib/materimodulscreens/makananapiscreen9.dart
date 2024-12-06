import 'package:flutter/material.dart';
import 'package:wisata_mobile_5/service/makanan_service.dart';
import 'package:wisata_mobile_5/widgets/makanan_card.dart';

class MakananAPIScreen9 extends StatelessWidget {
  final MakananService _makananService = MakananService();
  MakananAPIScreen9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daftar Makanan Seafood',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: FutureBuilder(
        future: _makananService.fetchMakanan(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error : ${snapshot.error}"));
          } else {
            final daftarSeafood = snapshot.data!;
            return ListView.builder(
              itemCount: daftarSeafood.length,
              itemBuilder: (context, index) {
                return MakananCard(makananModel: daftarSeafood[index]);
              },
            );
          }
        },
      ),
    );
  }
}
