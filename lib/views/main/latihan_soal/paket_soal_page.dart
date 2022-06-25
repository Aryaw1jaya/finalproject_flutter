import 'package:finalproject_flutter/constants/r.dart';
import 'package:flutter/material.dart';

class PaketSoalPage extends StatefulWidget {
  PaketSoalPage({Key? key}) : super(key: key);
  static String route = "paket_soal_page";

  @override
  State<PaketSoalPage> createState() => _PaketSoalPageState();
}

class _PaketSoalPageState extends State<PaketSoalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3F7F8),
      appBar: AppBar(
        title: Text("Paket Soal"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pilih Paket Soal",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: GridView.count(
                padding: EdgeInsets.all(10),
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                children: [
                  PaketSoalWidget(),
                  PaketSoalWidget(),
                  PaketSoalWidget(),
                  PaketSoalWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PaketSoalWidget extends StatelessWidget {
  const PaketSoalWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      padding: const EdgeInsets.all(13.0),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue.withOpacity(0.3),
            ),
            child: Image.asset(
              R.assets.ic_note,
              width: 25,
            ),
          ),
          SizedBox(height: 4),
          Text(
            "Aljabar",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "0/0 Paket Soal",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
