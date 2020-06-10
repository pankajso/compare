import 'package:flutter/material.dart';
  
  void main() => runApp(CompareApp());
  
  class CompareApp extends StatefulWidget {
    @override
    _CompareAppState createState() {
      return _CompareAppState();
    }
  }
  
  class _CompareAppState extends State {
    int _moneyone = 100;
    int _moneytwo = 100;
    int _wtone = 100;
    int _wttwo = 100;
    int _product = 1;

    int compute(){
      double result1 =  _moneyone/_wtone;
      double result2 =  _moneytwo/_wttwo;
      if (result1 < result2) {
        return 1;
      } else {
        return 2;
      } 

    }
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Compare',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Compare price'),
          ),
          body: Padding(
            padding: EdgeInsets.all(50.0),
            child: Center(
              
              child: Column(
                children: <Widget>[
                  Text(
                      'Product $_product is best',
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.monetization_on,
                        size: 30,
                      ),
                      new Expanded(
                        child: Slider(
                            value: _moneyone.toDouble(),
                            min: 1.0,
                            max: 1000.0,
                            divisions: 1000,
                            activeColor: Colors.red,
                            inactiveColor: Colors.black,
                            label: '${_moneyone.round()}',
                            onChanged: (double newValue) {
                              setState(() {
                                _moneyone = newValue.round();
                                _product = compute();
                              });
                            },
                            semanticFormatterCallback: (double newValue) {
                              return '${newValue.round()} dollars';
                            }
                        )
                      ),
                      Icon(
                        Icons.fitness_center,
                        size: 30,
                      ),
                      new Expanded(
                        child: Slider(
                            value: _wtone.toDouble(),
                            min: 1.0,
                            max: 1000.0,
                            divisions: 1000,
                            activeColor: Colors.blue,
                            inactiveColor: Colors.black,
                            label: '${_wtone.round()}',
                            onChanged: (double newValue) {
                              setState(() {
                                _wtone = newValue.round();
                                _product = compute();
                              });
                            },
                            semanticFormatterCallback: (double newValue) {
                              return '${newValue.round()} dollars';
                            }
                        )
                      ),
                    ]
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.monetization_on,
                        size: 30,
                      ),
                      new Expanded(
                        child: Slider(
                            value: _moneytwo.toDouble(),
                            min: 1.0,
                            max: 1000.0,
                            divisions: 1000,
                            activeColor: Colors.red,
                            inactiveColor: Colors.black,
                            label: '${_moneytwo.round()}',
                            onChanged: (double newValue) {
                              setState(() {
                                _moneytwo = newValue.round();
                                _product = compute();
                              });
                            },
                            semanticFormatterCallback: (double newValue) {
                              return '${newValue.round()} dollars';
                            }
                        )
                      ),
                      Icon(
                        Icons.fitness_center,
                        size: 30,
                      ),
                      new Expanded(
                        child: Slider(
                            value: _wttwo.toDouble(),
                            min: 1.0,
                            max: 1000.0,
                            divisions: 1000,
                            activeColor: Colors.blue,
                            inactiveColor: Colors.black,
                            label: '${_wttwo.round()}',
                            onChanged: (double newValue) {
                              setState(() {
                                _wttwo = newValue.round();
                                _product = compute();
                              });
                            },
                            semanticFormatterCallback: (double newValue) {
                              return '${newValue.round()} dollars';
                            }
                        )
                      ),
                    ]
                  ),
                ],
              )
            ),
          )
        ),
      );
    }
  }