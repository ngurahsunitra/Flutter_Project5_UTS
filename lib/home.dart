import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'result.dart';
import 'about.dart';

class InputMath extends StatefulWidget {
  @override
  _InputMathState createState() => _InputMathState();
}

class _InputMathState extends State<InputMath> {
  int a = 0;
  int b = 0;
  int n = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
        leading: new IconButton(
          icon: new Icon(Icons.refresh_outlined
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => InputMath()),
            );
          },
        ),
        title: Text('Arithmetic Calculator'),
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

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 15.0),
              width: 230,
              height: 230,
              child: Image.asset(
                'assets/math.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
            Container(
                padding: EdgeInsets.only(left: 25.0, right: 25.0),
                child: Column(
                  children: <Widget>[
                    Text('Menghitung Nilai',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                    Text('Barisan dan Deret Aritmatika',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                    Text(''),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: new Theme(
                            data: new ThemeData(
                                primaryColor: Colors.deepOrangeAccent,
                                primaryColorDark: Colors.deepOrangeAccent),
                            child: new TextField(
                              onChanged: (txt) {
                                setState(() {
                                  a = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderSide:
                                      new BorderSide(color: Colors.deepOrangeAccent),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0),
                                      )
                                  ),
                                  hintText: 'Masukkan Nilai Suku Pertama',
                                  labelText: 'Nilai Suku Pertama',
                                  prefixIcon: const Icon(
                                    Icons.assignment_outlined,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                  prefixText: ' ',
                                  suffixStyle:
                                  const TextStyle(color: Colors.deepOrangeAccent)),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Text(''),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: new Theme(
                            data: new ThemeData(
                                primaryColor: Colors.deepOrangeAccent,
                                primaryColorDark: Colors.deepOrangeAccent),
                            child: new TextField(
                              onChanged: (txt) {
                                setState(() {
                                  b = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                      borderSide:
                                      new BorderSide(color: Colors.deepOrangeAccent),
                                      borderRadius: const BorderRadius.all(
                                        const Radius.circular(30.0),
                                      )
                                  ),
                                  hintText: 'Masukkan Nilai Beda',
                                  labelText: 'Nilai Beda',
                                  prefixIcon: const Icon(
                                    Icons.assignment_outlined,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                  prefixText: ' ',
                                  suffixStyle:
                                  const TextStyle(color: Colors.deepOrangeAccent)),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Text(''),
                    Row(
                      children: <Widget>[
                        Expanded(
                          child: new Theme(
                            data: new ThemeData(
                                primaryColor: Colors.deepOrangeAccent,
                                primaryColorDark: Colors.deepOrangeAccent),
                            child: new TextField(
                              onChanged: (txt) {
                                setState(() {
                                  n = int.parse(txt);
                                });
                              },
                              keyboardType: TextInputType.number,
                              decoration: new InputDecoration(
                                  border: new OutlineInputBorder(
                                    borderSide:
                                    new BorderSide(color: Colors.deepOrangeAccent),
                                    borderRadius: const BorderRadius.all(
                                      const Radius.circular(30.0),
                                    ),
                                  ),
                                  hintText: 'Masukkan Nilai Suku Ke-N',
                                  labelText: 'Nilai Suku Ke-N',
                                  prefixIcon: const Icon(
                                    Icons.assignment_outlined,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                  suffixStyle:
                                  const TextStyle(color: Colors.deepOrangeAccent)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),

            Text(''),
            Text(''),
            Text(''),
            Container(
              //height: double.infinity,
              margin: EdgeInsets.only(left: 120, right: 120),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    side: BorderSide(color: Colors.deepOrangeAccent)
                ),
                color: Colors.deepOrangeAccent,
                textColor: Colors.deepOrangeAccent,
                padding: EdgeInsets.all(12.0),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CountResult
                      (vara: a,
                        varb: b,
                        varn: n)),
                  );
                },
                child: Text(
                  "Calculate",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
        //color: Colors.transparent,
        child: Container(
          height: 25,
          color: Colors.deepOrangeAccent,
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
    );

  }
}