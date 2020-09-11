import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ortalama Hesapla"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: uygulamaGovdesi(),
    );
  }

  Widget uygulamaGovdesi() {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          //Static Form Tutan
          Expanded(
              child: Container(
            color: Colors.pink,
            child: Form(
              child: Column(
                children: <Widget>[

                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Ders Adı",
                      hintText: "Ders adını giriniz",
                      border: OutlineInputBorder(),
                    ),
                    validator: (girilenDeger){
                      if(girilenDeger.length>0){
                        return null;
                      }else return "Ders adı boş olamaz";
                    },
                    onSaved:(kaydedilecekDeger){
                      
                    } ,
                  )

                ],
              ),
            ),
          )),
          //Dinamic Form Tutan
          Expanded(
              child: Container(
            color: Colors.green,
            child: Text("Liste"),
          )),
        ],
      ),
    );
  }
}
