import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ninja/quotes.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(), //NinjaCard(),
  ));
}
//------------------------------------------------------------------------------------------------//
// //Material Design
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

// class Kitten {
//   const Kitten({this.name, this.description, this.age, this.imageUrl});

//   final String name;
//   final String description;
//   final int age;
//   final String imageUrl;
// }

// final String server =
//     defaultTargetPlatform == TargetPlatform.android ? "10.0.2.2" : "localHost";

// final List<Kitten> kittens = <Kitten>[
//   Kitten(
//       name: 'Mittens',
//       description: 'red cat',
//       age: 11,
//       imageUrl: 'http//$server:8000/kitten).jpg'),
// ];

// class MyHomePage extends StatelessWidget {
//   const MyHomePage({Key key}) : super(key:key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Available'),
//       ),
//     );
//   }
// }
//-------------------------------------------------------------------------------------------------//
//QuoteList

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'Oscar Wilde', text: 'be yourself'),
    Quote(author: 'RbTagore', text: 'Gitanjali Bengal Tiger'),
    Quote(author: 'Oscar Wilde', text: 'its your life make it life'),
  ];

  List<String> authors = [' '];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}

class QuoteCard extends StatelessWidget {
  final Quote? quote;
  final VoidCallback? delete;
  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text(quote!.text!,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              )),
          SizedBox(height: 6.0),
          Text(
            quote!.author!,
            style: TextStyle(
              fontSize: 14.0,
              color: Colors.grey[800],
            ),
          ),
          SizedBox(height: 8.0),
          FloatingActionButton(
            onPressed: delete,
            child: Text('delete'),
          )
        ]),
      ),
    );
  }
}

//---------------------------------------------------------------------------------------------------//

//Ninja Id Card

// class NinjaCard extends StatefulWidget {
//   @override
//   State<NinjaCard> createState() => _NinjaCardState();
// }

// class _NinjaCardState extends State<NinjaCard> {
//   int ninjaLevel = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[900],
//       appBar: AppBar(
//         title: Text('Rgyan ID Card'),
//         centerTitle: true,
//         backgroundColor: Colors.grey[850],
//         elevation: 0.0,
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             ninjaLevel += 1;
//           });
//         },
//         child: Icon(Icons.add),
//         backgroundColor: Colors.grey[800],
//       ),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 40.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Center(
//               child: CircleAvatar(
//                 backgroundImage: AssetImage('assests/2.jpg'),
//                 radius: 40.0,
//               ),
//             ),
//             Text(
//               'Name',
//               style: TextStyle(
//                 color: Colors.grey,
//                 letterSpacing: 2.0,
//               ),
//             ),
//             SizedBox(
//               height: 10.0,
//             ),
//             Text(
//               'Rgyan - Social',
//               style: TextStyle(
//                   color: Colors.amber[200],
//                   letterSpacing: 2.0,
//                   fontSize: 28.0,
//                   fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               height: 30.0,
//             ),
//             Text(
//               'Current Ninja Level',
//               style: TextStyle(
//                 color: Colors.grey,
//                 letterSpacing: 2.0,
//               ),
//             ),
//             SizedBox(
//               height: 10.0,
//             ),
//             Text(
//               '$ninjaLevel',
//               style: TextStyle(
//                   color: Colors.amber[200],
//                   letterSpacing: 2.0,
//                   fontSize: 28.0,
//                   fontWeight: FontWeight.bold),
//             ),
//             SizedBox(
//               height: 30.0,
//             ),
//             Row(children: <Widget>[
//               Icon(
//                 Icons.email,
//                 color: Colors.grey[400],
//               ),
//               SizedBox(width: 10.0),
//               Text('rgyan@gmail.com',
//                   style: TextStyle(
//                     color: Colors.grey[400],
//                     letterSpacing: 1.0,
//                   )),
//             ])
//           ],
//         ),
//       ),
//     );
//   }
// }

// class Test extends StatefulWidget {
//   @override
//   _TestState createState() => _TestState();
// }

// class _TestState extends State<Test> {
//   int counter = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
