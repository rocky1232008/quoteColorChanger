import 'dart:ui';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Quote());
}

class Quote extends StatelessWidget {
  const Quote({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuoteHome(),
    );
  }
}

class QuoteHome extends StatefulWidget {
  const QuoteHome({ Key? key }) : super(key: key);

  @override
  _QuoteHomeState createState() => _QuoteHomeState();
}

class _QuoteHomeState extends State<QuoteHome> {
  Color color = Colors.red;
  var quotes = [{
    'Quote' : '“Be yourself; everyone else is already taken.”', 
    'Author' : '― Oscar Wilde',
    'Color' : Colors.green
  }, {
    'Quote' : '“So many books, so little time.”', 
    'Author' : '― Frank Zappa',
    'Color' : Colors.red
  }];
  var curQuote = 'This is a quote';
  var curAuthor = 'Author';
  var list = [];
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    curQuote = quotes[0].entries.forEach((element) {list.add(element.value);});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Text('"This is a quote"', style: TextStyle(fontSize: 105, fontFamily: 'Dancing-Script'),),
        SizedBox(height: 100,),
        Text('- Rohit Pulle', style: TextStyle(fontSize: 30, fontFamily: 'Pacifico'),),
      ],),),
    );
  }
}