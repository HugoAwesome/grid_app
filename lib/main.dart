import 'package:flutter/material.dart';
import 'package:grid_app/detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<String> nama = [
      'Ahmad Fuadi',
      'Cholil Bisri',
      'Idham Chalid',
      'Noer Alie'
    ];

    List<String> img = [
      'assets/images/ahmadfuadi.jpg',
      'assets/images/cholilbisri.jpg',
      'assets/images/idhamchalid.jpg',
      'assets/images/noeralie.jpg'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tokoh Islam'),
        ),
        body: GridView.count(
            crossAxisCount: 2,
            children: List.generate(nama.length, (index) {
              final name = nama[index].toString();
              final poto = img[index].toString();

              return GestureDetector(
                onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => DetailIslam(detailTitle: name,
                 detailImg: poto,)
                 ));
                },
                child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.cyan,
                    ),
                    child: Image.asset(
                      img[index],
                      height: 100,
                      width: 200,
                      fit: BoxFit.fitWidth,
                    )),
              );
            })),
      ),
    );
  }
}
