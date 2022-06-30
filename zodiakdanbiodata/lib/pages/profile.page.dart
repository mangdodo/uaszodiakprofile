import 'package:flutter/material.dart';

void main() => runApp(CardProfile());

class CardProfile extends StatelessWidget {
  const CardProfile({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home : Scaffold (
        backgroundColor: Colors.teal,
        body: SafeArea(child:Column (
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage('assets/img/arya.jpg'),
            ),
            Text('ARYA ADITYA', style: TextStyle(
              fontFamily: '',
               fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
            ),
            Text('MAHASISWA', style: TextStyle(
              color : Colors.teal.shade100,
              fontSize: 20.0 ,
              letterSpacing: 2.5 ,
              fontWeight: FontWeight.bold),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.school,
                    color: Colors.teal,
                  ),
                  title: Text('Jurusan Teknologi Informasi 2019', style: TextStyle(color: Colors.teal.shade900,
                  fontFamily: '',
                  fontSize: 20.0),
                  ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0,
                   ),
                   child: ListTile(
                     leading: Icon(
                       Icons.email,color: Colors.teal,
                     ),
                     title: Text('komanggedearyaaditya@gmaill.com',
                     style: TextStyle(
                       fontSize: 20.0,
                       color: Colors.teal.shade900, 
                        fontFamily: ''
                     ),
                     ),
                   ),
                )
          ],
        ) ,

        ),
      )
    );
  }
}