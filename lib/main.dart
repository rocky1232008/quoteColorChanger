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
  var quotes =['“So many books, so little time.”', '“Be yourself; everyone else is already taken.”', '“Two things are infinite: the universe and human stupidity; and I\'m not sure about the universe.”', '“You only live once, but if you do it right, once is enough.”', '“Be the change that you wish to see in the world.”'];
  var authors = ['― Frank Zappa', '― Oscar Wilde', '― Albert Einstein', '― Mae West', '― Mahatma Gandhi'];
  var colors = [Colors.green, Colors.red, Colors.yellow, Colors.blue, Colors.purple];
  var curQuote = 'This is a quote';
  var curAuthor = 'Author';
  var list = [];
  var index = 0;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    color = colors[index];
    curAuthor = authors[index];
    curQuote = quotes[index];
  }

  void next(){

    index += 1;
    if(index >= 5){
      index = 0;
    }
    setState(() {
      color = colors[index];
      curAuthor = authors[index];
      curQuote = quotes[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: SingleChildScrollView(
        child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 35),
            child: Text(curQuote, style: TextStyle(fontSize: 105, fontFamily: 'Dancing-Script'), textAlign: TextAlign.center,),
          ),
          SizedBox(height: 100,),
          Text(curAuthor, style: TextStyle(fontSize: 30, fontFamily: 'Pacifico'),),
        ],),),
      ),
      floatingActionButton: FloatingActionButton(onPressed: next, child: Icon(Icons.next_plan),),
    );
  }
}