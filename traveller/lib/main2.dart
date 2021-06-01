import 'package:flutter/material.dart';

  class SubPage extends StatelessWidget {
    int _currentIndex = 0;
    final List<Widget> _children = [];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
     // onTap: onTabTapped, // new
      currentIndex: _currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.map),
          title: Text("Головна"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
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
     // onTap: (int index) {
      //  this.onTapHandler(index);
    //  },
    ),
  appBar: AppBar(
    leading: new Container(),
    title: Image.asset('images/travellerua.png', fit:BoxFit.fill),
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
    SubPage2(),
  ],
  ),
  ),

  );
  }

  }
class SubPage2 extends StatelessWidget {
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
                ButtonTheme(
                  minWidth: 350.0,
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
                    minWidth: 157.0,
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
/////////////////////////////////////////////////////////////
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