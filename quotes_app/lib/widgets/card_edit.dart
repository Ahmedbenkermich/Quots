// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:quotes_app/widgets/quotes.dart';



class CardEdit extends StatelessWidget {

  final BestQuotes quote;
  final Function delete;
  CardEdit({required this.quote,required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(26,26,26,0),
      child: 
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children:[ 
                Text(quote.text ,style:TextStyle(fontSize: 26,color: Colors.grey[600],fontWeight: FontWeight.bold),),
                SizedBox(height: 6.0,),
                Text(quote.author,style:TextStyle(fontSize: 14,color: Colors.grey[800])),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    IconButton(
                      onPressed:(){
                      delete(quote);
                    },
                    icon: Icon(Icons.delete),
                   ),
                  Text("delete quotes",style: TextStyle(fontWeight:FontWeight.bold ),),


                  ],
                )
                
                 ],
                ),
          ),
          
          
          );
  }
}