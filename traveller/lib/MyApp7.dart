import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



import 'faventry.dart';
//void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyApp777(title: 'Flutter Demo Home Page', key: null,),
    );
  }
}

class MyApp777 extends StatefulWidget {
  MyApp777({required key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyApp777 createState() => _MyApp777();
}

class _MyApp777 extends State<MyApp777> {


  // This navigator state will be used to navigate different pages
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        //leading: new Container(),
        title: Image.asset('images/travellerua.png', fit: BoxFit.fill),
    backgroundColor: Color.fromARGB(255, 255, 139, 0),
    ),
    body:Container(
      //title: 'Flutter Demo',
      /*  theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),*/
      child: Column(
          children: <Widget>[
            Text("\nМої замовлення"),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 25, 20, 4),
              child: Container(
                height: 60,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    // child: Text(name, textAlign: TextAlign.center, style: TextStyle(color: Colors.black45),),
                  ),
                ), decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.black45)),
              ),
            ),
            Text("\nДокументи"),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 25, 20, 4),
              child: Container(
                height: 60,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    // child: Text(name, textAlign: TextAlign.center, style: TextStyle(color: Colors.black45),),
                  ),
                ), decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.black45)),
              ),
            ),
            Text("\nНалаштування"),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 25, 20, 4),
              child: Container(
                height: 60,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(

                        children: <Widget>[
                          Text("Отримувати сповіщення      ", textAlign: TextAlign.center, style: TextStyle(color: Colors.black45),),
                          MyStatefulWidget1(),
                        ] ),
                  ),
                ), decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.black45)),
              ),
            ),
          ]
      ),
    ),
    );
  }
/*
  Widget _bottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.map), title: Text("Головна"),),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), title: Text("Обране")),
        BottomNavigationBarItem(icon: Icon(Icons.help_outline), title: Text("Підтримка")),
        BottomNavigationBarItem(icon: Icon(Icons.person), title: Text("Профіль"),)
      ],
      onTap: _onTap,
      currentIndex: _currentTabIndex,
    );
  }

  _onTap(int tabIndex) {
    switch (tabIndex) {
      case 0:
        _navigatorKey.currentState!.pushReplacementNamed("Main");
        break;
      case 1:
        _navigatorKey.currentState!.pushReplacementNamed("Favorite");
        break;
      case 2:
        _navigatorKey.currentState!.pushReplacementNamed("Help");
        break;
      case 3:
        _navigatorKey.currentState!.pushReplacementNamed("Account");
        break;
    }
    setState(() {
      _currentTabIndex = tabIndex;
    });
  }
*/

}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'Харків';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['Харків', 'Київ', 'Дніпро', 'Запоріжжя']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

}


class MyApp8 extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget1 extends StatefulWidget {
  @override
  State<MyStatefulWidget1> createState() => _MyStatefulWidgetState1();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState1 extends State<MyStatefulWidget1> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.orange;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
