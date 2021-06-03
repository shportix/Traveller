import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'faventry.dart';

bool isA=true;
//////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyBottomBarDemo(title: 'Flutter Demo Home Page', key: null,),
    );
  }
}
var name="Name1";
var email="aaa@gmail.com";
var bithdate="01-01-2000";
//////////////////////////////////////////////////
class MyBottomBarDemo extends StatefulWidget {
  MyBottomBarDemo({required key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyBottomBarDemo> {
  // This navigator state will be used to navigate different pages
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(key: _navigatorKey, onGenerateRoute: generateRoute),
        bottomNavigationBar: _bottomNavigationBar(),
      ),
    );
  }

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

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "Favorite":
        if(isA) {
          return MaterialPageRoute(builder: (context) =>
              Container(
                /* color: Colors.blue,
            child: Center(
                child: Text("Favorite")*/
                child: TabBarDemo(),
              )

          );
        } else{
          return MaterialPageRoute(builder: (context) =>
              Scaffold(



                  //  backgroundColor: Color.fromARGB(255, 255, 139, 0),

                  body: Center(
                    child: Column(

                  children:  <Widget>[
                    Container(
                        //color: Color.fromARGB(255, 255, 139, 0),
                    child: Image.asset('images/faventry.png', fit:BoxFit.fill)
                    ),
                    ButtonTheme(
                      minWidth: 300.0,
                      height: 50.0,
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
                      child:
                      RaisedButton(
                        textColor: Colors.white,
                        color: Color.fromARGB(255, 255, 139, 0),

                        child: Text('Увійти'),
                        onPressed: () {
                          // TODO
                        },
                      ),
                    ),
                    Text("\n"),
                    ButtonTheme(
                      minWidth: 300.0,
                      height: 50.0,
                      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
                      child:
                      RaisedButton(
                        textColor: Color.fromARGB(255, 60, 134, 247),
                        color: Colors.white,
                        child: Text('Зареєструватися'),
                        onPressed: () {
                          // TODO
                        },
                      ),
                    ),
              ]
                ),
              ),
              ),
          );
        }
      case "Help":
        return MaterialPageRoute(builder: (context) =>
            Container(
               child: SubPage5(),
            ),
        );
      case "Account":
        if(isA) {
        return MaterialPageRoute(builder: (context) =>Scaffold( appBar: AppBar(
          leading: new Container(),
          title: Image.asset('images/travellerua.png', fit:BoxFit.fill),
          backgroundColor: Color.fromARGB(255, 255, 139, 0),
        ),
          backgroundColor: Color.fromARGB(255, 60, 134, 247),
            body: Center(
                child:
            Container(
            //color: Colors.green,
                child: Center(
                    child: MyApp4(),
                ),
              ),
            ),
          )
        );
        } else{
          return MaterialPageRoute(builder: (context) =>
              Scaffold(
                //  backgroundColor: Color.fromARGB(255, 255, 139, 0),
                backgroundColor: Color.fromARGB(255, 142, 181, 255),
                body: Center(
                  child: Column(
                     // color: Color.fromARGB(255, 255, 139, 0),

                      children:  <Widget>[
                        Container(
                          //color: Color.fromARGB(255, 255, 139, 0),
                            child: Image.asset('images/er.png', fit:BoxFit.fill)

                        ),Text("\n\n"),
                        Container(

                        child: ButtonTheme(
                          minWidth: 300.0,
                          height: 50.0,

                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
                          child:
                          RaisedButton(
                            textColor: Colors.white,
                            color: Color.fromARGB(255, 255, 139, 0),

                            child: Text('Увійти'),
                            onPressed: () {
                              // TODO
                            },
                          ),
              ),),
                        Text("\n"),
                Container(

                    child: ButtonTheme(
                          minWidth: 300.0,
                          height: 50.0,
                          shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
                          child:
                          RaisedButton(
                            textColor: Color.fromARGB(255, 60, 134, 247),
                            color: Colors.white,
                            child: Text('Зареєструватися'),
                            onPressed: () {
                              // TODO
                            },
                          ),
                        ),
                        ),
                      ]
                  ),
                  ),

              ),
          );
        }
      default:

        return MaterialPageRoute(builder: (context) =>Scaffold( appBar: AppBar(
          leading: new Container(),
          title: Image.asset('images/travellerua.png', fit:BoxFit.fill),
          backgroundColor: Color.fromARGB(255, 255, 139, 0),
        ),
            body: Center(
            child:  Container(
              height:1000,
              child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children:  <Widget>[
                Container(
                  height:400,
                  width: 350,
                   child: Column(  children:  <Widget>[
                    //SubPage3(),
                   Row( children: <Widget>[  Column(  children:  <Widget>[
                    Text('  МІСТО ПОЧАТКУ ТУРУ '),
                    MyStatefulWidget(),
                   ]
                   ),
                     Text('              '),
                     Column(  children:  <Widget>[
                  Text('МІСТО, КУРОРТ'),
                  MyStatefulWidget(),
                 ]),
                 // SubPage4(),
                  ] ),
                  Container(
                    height: 50,
                    child: Text('\nДАТА ВИРУШЕННЯ '),
                  ),
                    MyApp1(),
                    Text('КІЛЬКІСТЬ НОЧЕЙ '),
                    MyApp2(),
                    Text('КІЛЬКІСТЬ ДОРОСЛИХ '),
                    MyApp2(),
                    Text('КІЛЬКІСТЬ ДІТЕЙ '),
                    MyApp2(),
                  ],
                  ),
                ),

                ButtonTheme(
                  minWidth: 350.0,
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
                SubPage2(),
              ],
            ),
            ),
            ),
        ),
        );
    }
  }
}
////////////////////////////////////////////////////////////
//////////////////////Обране ///////////////////////////////
class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Image.asset('images/travellerua.png', fit:BoxFit.fill),
            backgroundColor: Color.fromARGB(255, 255, 139, 0),
            bottom:
              TabBar(
                tabs: [
                  Tab(child: Text("ТУРИ")),
                  Tab(icon: Text("БІЛЕТИ")),
                  Tab(icon: Text("ГОТЕЛІ")),
                  Tab(icon: Text("ІНШЕ")),
                ],
            ),
          ),
          body: TabBarView(
            children: [
              Icon(Icons.account_balance_outlined),
              Icon(Icons.airplane_ticket),
              Icon(Icons.hotel_outlined),
              Icon(Icons.apps),
            ],
          ),
        ),
      ),
    );
  }
}
//////////////////////Обране ///////////////////////////////
////////////////////////////////////////////////////////////

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
      style: const TextStyle(color: Colors.black54,  fontSize: 20,),
      underline: Container(
        height: 2,
        color: Colors.black,
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
///////////////////////////////////////////////////////////////////////////////////
/////////////////////////////Вхід Реєстрація/////////////////////////////////
  class SubPage extends StatelessWidget {
    int _currentIndex = 0;
    final List<Widget> _children = [];
  @override
  Widget build(BuildContext context) {
  return Scaffold(

  appBar: AppBar(
    leading: new Container(),
    title: Image.asset('images/travellerua.png', fit:BoxFit.fill),
    backgroundColor: Color.fromARGB(255, 255, 139, 0),
  ),
  body: Center(
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
  //Text('Click button to back to Main Page'),
    ButtonTheme(
      minWidth: 500.0,
      height: 50.0,
      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
      child:
      RaisedButton(
  textColor: Color.fromARGB(255, 60, 134, 247),
  color: Colors.white,
  child: Text('Увійти'),
  onPressed: () {
  // TODO
  },
  ),
    ),
    ButtonTheme(
      minWidth: 500.0,
      height: 50.0,
      shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
      child:
      RaisedButton(
        textColor: Colors.white,
        color: Color.fromARGB(255, 255, 139, 0),
        child: Text('Зареєструватися'),
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
///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
///////////////////////Забули пароль/////////////////////////////////////
class SubPage5 extends StatelessWidget {
  int _currentIndex = 0;
  final List<Widget> _children = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 100, 254),
      appBar: AppBar(
        leading: new Container(),
        title: Image.asset('images/travellerua.png', fit:BoxFit.fill),
        backgroundColor: Color.fromARGB(255, 255, 139, 0),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //Text('Click button to back to Main Page'),
            ButtonTheme(
              minWidth: 300.0,
              height: 40.0,
             // buttonColor: Color.fromARGB(255, 19, 100, 254),
              //shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
              child:
              RaisedButton(
                textColor: Colors.white,
                color: Color.fromARGB(255, 19, 100, 254),
                child: Text('< Забули пароль?                                              '),
                onPressed: () {
                  // TODO
                },
              ),
            ),
            Text("\n"),
            Container(child: Image.asset('images/vl.png')),
            ButtonTheme(
              minWidth: 300.0,
              height: 40.0,
             // shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
              child:
              RaisedButton(
                textColor: Colors.white,
                color: Color.fromARGB(255, 19, 100, 254),
                child: Text('Відправити листа ще раз'),
                elevation: 0.0,
                onPressed: () {
                  // TODO
                },
              ),
            ),
            Container(child: Text("\n\n\n\n\nЯкщо Ви не бачите нашого листа,\n не забудьте перевірити 'Спам', або ",
              //  textDirection: TextDirection.ltr,       // текст слева направо
              //  textAlign: TextAlign.center,            // выравнивание по центру
                style: TextStyle(color: Colors.white,   // зеленый цвет текста
                    fontSize: 14,                       // высота шрифта 26
                    backgroundColor: Color.fromARGB(255, 19, 100, 254),    // черный цвет фона текста
                )
            )
            ),
            ButtonTheme(
              minWidth: 300.0,
              height: 40.0,
              // shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
              child:
              RaisedButton(
                textColor: Colors.white,
                color: Color.fromARGB(255, 19, 100, 254),
                child: Text('напишіть в підтримку'),
                elevation: 0.0,
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


///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
class SubPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 50,
      padding: EdgeInsets.all(4.0),
    //  body:
          child: Center(
            child: Row(
              children: <Widget>[
                ButtonTheme(
                  minWidth: 250.0,
                  height: 50.0,
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
                  padding: EdgeInsets.all(4.0),
                  child:
                  RaisedButton(
                    textColor: Colors.white,
                    color: Color.fromARGB(255, 60, 134, 247),
                    child: Text('ПРИДБАТИ КВИТОК'),
                    onPressed: () {
                      // TODO
                    },
                  ),
                ),
                ButtonTheme(
                    minWidth: 92.0,
                    height: 50.0,
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
                    child:
                    RaisedButton(
                      textColor: Colors.white,
                      color: Color.fromARGB(255, 60, 134, 247),
                      child: Text('І Н Ш Е'),
                      onPressed: () {
                        // TODO
                      },
                    )
                )
              ]
          ),

      ),
    );
  }
}
/*
class SubPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 510,
      height: 50,
      padding: EdgeInsets.all(4.0),
      //  body:
      child: Center(
        child: Row(
            children: <Widget>[
              Text('МІСТО ПОЧАТКУ ТУРУ '),
              MyStatefulWidget(),
            ]
        ),

      ),
    );
  }
}*/
/*
class SubPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 510,
      height: 50,
      padding: EdgeInsets.all(4.0),
      //  body:
      child: Center(
        child:  Container(
              height: 500,

        child: Row(
            children: <Widget>[
              Column(
                children:<Widget>[ Text('ДАТА ВИРУШЕННЯ '),
               /*Container(
                  height: 200,
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.date,
                    initialDateTime: DateTime(1969, 1, 1),
                    onDateTimeChanged: (DateTime newDateTime) {
                      // Do something
                    },
                  ),
                ),*/
                 ]
              ),Container(
              height: 200,
              child: Column(
                  children:<Widget>[ Text('КІЛЬКІСТЬ НОЧЕЙ '),
                  //  RangeWidget(),
                  ]
              ),
              ),
            ]
        ),
        ),
      ),
    );
  }
}*/
///////////////////////////////////////////////////////////////////////////////////
/////////////////////////Кількість ночей повзунок//////////////////////////////////

class MyApp2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 300,
      child: RangeWidget(),
    );
  }
}
class RangeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RangeWidget();
}

class _RangeWidget extends State<RangeWidget> {
  RangeValues _currentRangeValues = const RangeValues(0, 5);

  static String _valueToString(double value) {
    return value.toStringAsFixed(1);
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[

          RangeSlider(
          values: _currentRangeValues,
          min: 0,
          max: 30,
          divisions: 30,
          labels: RangeLabels(
            _currentRangeValues.start.round().toString(),
            _currentRangeValues.end.round().toString(),
          ),
          onChanged: (RangeValues values) {
            setState(() {
              _currentRangeValues = values;
            });
          },
        ),
      ],
    );
  }
}

/////////////////////////////////////////////////////
////////////////////// Календар//////////////////////
class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: MyHomePage1(),
    );
  }
}
class MyHomePage1 extends StatefulWidget {
  @override
  _MyHomePageState1 createState() => _MyHomePageState1();
}
class _MyHomePageState1 extends State<MyHomePage1> {
  DateTime currentDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2021),
        lastDate: DateTime(2023));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(currentDate.toString().length > 10 ? '${currentDate.toString().substring(0, 10)}' : currentDate.toString(),
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.center,
              style:  TextStyle(color: Colors.black45,fontSize: 26,),),
            RaisedButton(
              onPressed: () => _selectDate(context),
              child: Text('ОБЕРІТЬ ДАТУ'),
              textColor: Colors.white,
              color: Color.fromARGB(255, 60, 134, 247),
            ),
          ],
        ),
    );
  }
}
/////////////////////////////////////////////////////////////
//////////////////////////Профіль користувача/////////////////
class MyApp4 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      //title: 'Flutter Demo',
    /*  theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),*/
      child: MyHomePage4(),
    );
  }
}

class MyHomePage4 extends StatefulWidget {
  @override
  _MyHomePageState4 createState() => _MyHomePageState4();
}

class _MyHomePageState4 extends State<MyHomePage4> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: profileView()// This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget profileView() {
    return Container(

      color: Color.fromARGB(255, 19, 100, 254),
      child: Column(

      children: <Widget>[

        Padding(
          padding: EdgeInsets.fromLTRB(290, 10, 0, 0),
          child: RaisedButton(
            color: Color.fromARGB(255, 19, 100, 254),
            elevation: 0.0,
            child: Icon(Icons.exit_to_app, color: Colors.white,),
            onPressed: () {
              // TODO
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0,0 ,50),
          child: Stack(

            children: <Widget>[

              CircleAvatar(
                radius: 70,
                child: ClipOval(child: Image.asset('images/acc.png', height: 150, width: 150, fit: BoxFit.cover,),),
              ),
              Positioned(bottom: 1, right: 1 ,child: Container(
                height: 40, width: 40,

              ))
            ],
          ),
        ),
        Expanded(child: Container(
          decoration: BoxDecoration(
             // borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                  color: Colors.white,
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 25, 20, 4),
                child: Container(
                  height: 60,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(name, textAlign: TextAlign.center, style: TextStyle(color: Colors.black45),),
                    ),
                  ), decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.black45)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                child: Container(
                  height: 60,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(email, textAlign: TextAlign.center, style: TextStyle(color: Colors.black45),),
                    ),
                  ), decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.black45)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 4),
                child: Container(
                  height: 60,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(bithdate, textAlign: TextAlign.center,  style: TextStyle(color: Colors.black45),),
                    ),
                  ), decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.black45)),
                ),
              ),
            /*  Expanded(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container( height: 70, width: 200,
                    child: Align(child: Text('Save', style: TextStyle(color: Colors.white70, fontSize: 20),),),
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),)
                    ),
                  ),
                ),
              )*/
              Text('\n'),
              ButtonTheme(
                  minWidth: 350.0,
                  height: 60.0,
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(20)),
                  child:
                  RaisedButton(
                    textColor: Colors.white,
                    color: Color.fromARGB(255, 60, 134, 247),
                    child: Text('ДОДАТКОВО'),
                    onPressed: () {
                     // MaterialPageRoute(builder: (context) =>Scaffold(children: <Widget>[MyApp7()]));
                    },
                  )
              )
            ],
          ),
        ))
      ],
    ),);
  }
}
/////////////////////////////////////////////////////////////////////////
///////////////////////////ДОДАТКОВО//////////////////////////////////////////////
class MyApp7 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      //title: 'Flutter Demo',
      /*  theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),*/
        child: Column(
         children: <Widget>[
            Text("Мої замовлення"),
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
           Text("Документи"),
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
           Text("Налаштування"),
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
                        Text("Отримувати сповіщення на цьому пристрої", textAlign: TextAlign.center, style: TextStyle(color: Colors.black45),),
                        MyApp8(),
                  ] ),
                 ),
               ), decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20)),border: Border.all(width: 1.0, color: Colors.black45)),
             ),
           ),
         ]
        ),

    );
  }
}
//////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////
///////////////////checkBox///////////////////////////////////////
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
      return Colors.red;
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

/*
class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ToggleWidget(
                initialLabel: 2,
                activeBgColor: Colors.indigo,
                activeTextColor: Colors.white,
                inactiveBgColor: Colors.grey,
                inactiveTextColor: Colors.green,
                labels: ['OR', 'XOR', 'AND', 'NOT'],
                onToggle: (index) {
                  print('switched to: $index');
                },
              ),
              SizedBox(height: 16),
              ToggleWidget(
                cornerRadius: 20,
                activeBgColor: Colors.redAccent,
                activeTextColor: Colors.yellow,
                inactiveBgColor: Colors.grey,
                inactiveTextColor: Colors.white,
                labels: ['YES', 'NO'],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
typedef OnToggle = void Function(int index);

class ToggleWidget extends StatefulWidget {
  final Color activeBgColor;
  final Color activeTextColor;
  final Color inactiveBgColor;
  final Color inactiveTextColor;
  final List<String> labels;
  final double cornerRadius;
  final OnToggle onToggle;
  final int initialLabel;
  final double minWidth;

  ToggleWidget({
    required Key key,
    required this.activeBgColor,
    required this.activeTextColor,
    required this.inactiveBgColor,
    required this.inactiveTextColor,
    required this.labels,
    required this.onToggle,
    this.cornerRadius = 8.0,
    this.initialLabel = 0,
    this.minWidth = 72,
  }) : super(key: key);

  @override
  _ToggleWidgetState createState() => _ToggleWidgetState();
}

class _ToggleWidgetState extends State<ToggleWidget> {
  late int current;

  @override
  void initState() {
    current = widget.initialLabel;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(widget.cornerRadius),
      child: Container(
        height: 40,
        color: widget.inactiveBgColor,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(widget.labels.length * 2 - 1, (index) {
            final active = index ~/ 2 == current;
            final textColor = active ? widget.activeTextColor : widget.inactiveTextColor;
            final bgColor = active ? widget.activeBgColor : Colors.transparent;
            if (index % 2 == 1) {
              final activeDivider = active || index ~/ 2 == current - 1;
              return Container(
                width: 1,
                color: activeDivider ? widget.activeBgColor : Colors.white30,
                margin: EdgeInsets.symmetric(vertical: activeDivider ? 0 : 8),
              );
            } else {
              return GestureDetector(
                onTap: () => _handleOnTap(index ~/ 2),
                child: Container(
                  constraints: BoxConstraints(minWidth: widget.minWidth),
                  alignment: Alignment.center,
                  color: bgColor,
                  child: Text(widget.labels[index ~/ 2], style: TextStyle(color: textColor)),
                ),
              );
            }
          }),
        ),
      ),
    );
  }

  void _handleOnTap(int index) async {
    setState(() => current = index);
    if (widget.onToggle != null) {
      widget.onToggle(index);
    }
  }
}
*/