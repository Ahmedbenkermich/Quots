// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quotes_app/widgets/card_edit.dart';
import 'package:quotes_app/widgets/quotes.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {

 const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuotesCard(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class QuotesCard extends StatefulWidget {
  const QuotesCard({super.key});

  @override
  State<QuotesCard> createState() => _QuotesCardState();
}


class _QuotesCardState extends State<QuotesCard> {

List<BestQuotes> quotes = [
    BestQuotes(text: "never give up", author: "A7med"),
    BestQuotes(text: "5outh el 3elm mn rous lkremich", author: "ma3lich"),
    BestQuotes(text: "no love", author: "kermich")
];

delete(BestQuotes item){
  setState(() {
    quotes.remove(item);
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.orange,
        title: Text("Awesome Quotes",style:TextStyle(fontSize: 25,),),
        centerTitle:true,
      ),

      body: Column(
        children: 
          quotes.map((quote) => CardEdit(
            quote: quote,
            delete:delete,
            
            )).toList(),
        
      ),

    );
  }
}