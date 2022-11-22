import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ), //ThemeData
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  final String title = 'Museum Kereta Api Ambarawa';
  final String location = 'Kab. Semarang, Jawa Tengah';
  final String description =
      '''Museum Ambarawa atau Indonesian Railway Museum (IRM) dibangun oleh Nedherlandsch Indische Spoorweg Maatschappij (NISM) yang diresmikan pada tanggal 21 Mei 1873. Museum Ambarawa menampilkan koleksi perekeretaapian dari masa Hindia Belanda hingga prakemerdekaan RI. Para pengunjung juga dapat menikmati perjalanan wisata dengan menaiki Kereta Api Wisata dengan menggunakan lokomotif uap bergigi yang melewati rel bergerigi, rel bergerigi tersebut satu-satunya yang masih aktif di Indonesia.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Objek Wisata'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'images/museum.jpg',
            height: 250,
            width: 412,
            fit: BoxFit.fill,
          ),
          Container(
            height: 15,
          ),
          Row(
            children: [
              Container(
                width: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    this.location,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              Container(
                width: 100,
              ),
              Icon(
                Icons.star,
                size: 30,
                color: Colors.orange,
              ),
              Text(
                '4',
                style: TextStyle(
                  fontSize: 18,
                ),
              )
            ],
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              this.description,
              style: TextStyle(
                fontSize: 18,
              ),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}