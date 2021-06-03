import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



import 'faventry.dart';
void main() => runApp(MyApp7());


class MyApp7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MySearch(title: 'Flutter Demo Home Page', key: null,),
    );
  }
}

class MySearch extends StatefulWidget {
  MySearch({required key, required this.title}) : super(key: key);
  final String title;

  @override
  _MySearch createState() => _MySearch();
}

class _MySearch extends State<MySearch> {


  // This navigator state will be used to navigate different pages
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  int _currentTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: new Container(),
          title: Image.asset('images/travellerua.png', fit:BoxFit.fill),
          backgroundColor: Color.fromARGB(255, 255, 139, 0),
        ),
        body: Center(
          child:  Container(
            height:1000,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children:  <Widget>[
                Container(
                  height: 70,
                  color: Colors.blue,
                  child: Row(
                    children: [
                      GestureDetector(

                        onTap: () {
                          showMenu(
                            context: context,
                            position: new RelativeRect.fromLTRB(0, 130, 10, 0),
                            items: [
                              PopupMenuItem(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 50,
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(
                                      maxHeight: 300.0,
                                    ),
                                    child: TextField(
                                      maxLines: null,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                        child: Container(
                          width: 110,
                          height: 70,
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 40,
                              ),
                            ],
                          ),
                        ),
                      ),

                      GestureDetector(

                        onTap: () {
                          showMenu(
                            context: context,
                            position: new RelativeRect.fromLTRB(15, 130, 10, 0),
                            items: [
                              PopupMenuItem(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 30,
                                  child: Text("one"),
                                ),
                              ),
                            ],
                          );
                        },
                        child: Container(
                          width: 120,
                          height: 70,
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.dehaze,
                                color: Colors.white,
                                size: 40,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(

                        onTap: () {
                          showMenu(
                            context: context,
                            position: new RelativeRect.fromLTRB(30, 130, 10, 0),
                            items: [
                              PopupMenuItem(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 30,
                                  child: Text("Популярне"),
                                ),
                              ),
                              PopupMenuItem(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 30,
                                  child: Text("Спочатку найдишевші"),
                                ),
                              ),
                              PopupMenuItem(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 30,
                                  child: Text("Спочатку найдорожчі"),
                                ),
                              ),
                              PopupMenuItem(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 30,
                                  child: Text("За оцінкою"),
                                ),
                              ),

                            ],
                          );
                        },
                        child: Container(
                          width: 110,
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Column(
                            children: [
                              Icon(
                                Icons.sort,
                                color: Colors.white,
                                size: 40,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Center(
                    child: Container(

                      width: 300,
                      height: 400,
                      color: Colors.white,

                      child: Column(
                        children: [
                          Container(
                            height: 170,
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: RaisedButton(
                                color: Colors.white,
                            //textColor: Colors.white,
                                // shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
                                 child: Image.asset('images/Hotel1.png', fit:BoxFit.fill),
                                onPressed: () {

                                   },
                              )

                          ),
                          Container(
                              height: 170,
                              margin: EdgeInsets.symmetric(vertical: 10),
                              child: RaisedButton(
                                color: Colors.white,

                                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(8.0)),
                                child: Image.asset('images/Hotel2.png', fit:BoxFit.fill),
                                onPressed: () {

                                  },
                              )

                          )
                        ],
                      ),
                    ),
                  )
                )
              ],
            ),
          ),
        ),
      ),
    );
  }




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
}
class RangeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RangeWidget();
}

class _RangeWidget extends State<RangeWidget> {
  RangeValues _currentRangeValues = const RangeValues(0, 100);

  static String _valueToString(double value) {
    return value.toStringAsFixed(0);
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[

        RangeSlider(
          values: _currentRangeValues,
          min: 1,
          max: 30,
          divisions: 1,
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
/////////////////////////////////////////////////////////////
