import 'package:flutter/material.dart';

class SubPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // currentIndex: this.selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            title: Text("Головна"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Обране"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline),
            title: Text("Допомога"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text("Профіль"),
          )
        ],
        onTap: (int index) {
          //  this.onTapHandler(index);
        },
      ),
      appBar: AppBar(
        leading: new Container(),
        title: Image.asset('images/entry.png', fit:BoxFit.fill),
        backgroundColor: Color.fromARGB(255, 255, 139, 0),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Click button to back to Main Page'),
            ButtonTheme(
              minWidth: 500.0,
              height: 50.0,
              shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
              child:
              RaisedButton(
                textColor: Colors.white,
                color: Color.fromARGB(255, 255, 139, 0),
                child: Text('З Н А Й Т И   Т У Р И'),
                onPressed: () {
                  // TODO
                },
              ),
            ),
          ],
        ),
      ),

    );
  }

}