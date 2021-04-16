import 'package:flutter/material.dart';
import 'about.dart';

class CountResult extends StatelessWidget {
  CountResult({@required this.vara, @required this.varb, @required this.varn});
  final int vara;
  final int varb;
  final int varn;

  @override
  Widget build(BuildContext context) {
    int Un = vara + (varn-1) * varb;
    double Sn = (varn/2) * (vara + Un);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text('Hasil'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutRoute()),
              );
            },
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),

      bottomNavigationBar: BottomAppBar(
        //color: Colors.transparent,
        child: Container(
          height: 25,
          color: Colors.purple,
          alignment: Alignment.center,
          child: Text(
            'Developed with <3 by @ngurahsunitra.',
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w300,
                color: Colors.white),
          ),
        ),
        //elevation: 0,
      ),


      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              width: 230,
              height: 230,
              child: Image.asset(
                'assets/result.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 30),
              child: Column(
                children: <Widget>[
                  Divider(
                    color: Colors.purple,
                    height: 20,
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Text('Diketahui :',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text('Suku Pertama (a)= ${vara}',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text('Suku Ke-N (n)= ${varn}',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text('Beda (b)= ${varb}',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Divider(
                    color: Colors.purple,
                    height: 20,
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Text('Rumus : ',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text('Un = a + (n - 1) b',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text('Sn = n / 2 (a + Un)',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Divider(
                    color: Colors.purple,
                    height: 20,
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                  ),
                  Text('Maka, Nilai Un & Sn Adalah',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text('Sebagai Berikut :',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text('Un  =  ${Un}',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                      color: Colors.purple,
                    ),
                  ),
                  Text('Sn  =  ${Sn}',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w800,
                      color: Colors.purple,
                    ),
                  ),
                  Divider(
                    color: Colors.purple,
                    height: 20,
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),



    );
  }
}