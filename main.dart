import 'package:flutter/material.dart';

void main()
{
  runApp(FunFactsApp());
}

class FunFactsApp extends StatelessWidget {
  const FunFactsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fun Facts About Me',
      home: FunFactsHome(),
    );
  }

}
class FunFactsHome extends StatefulWidget {
  const FunFactsHome ({super.key});

  @override
  State<FunFactsHome> createState() => FunFactsHomeState();


}
class FunFactsHomeState extends State<FunFactsHome> {
  int _counter = 0;
  String _fact = "Tap the button to reveal a fun fact";

  final List <String> _facts = [
"I love travelling",
    "I like to rest",
    "I am introvert",
    "I like coding",
    "I like dogs",
  ];

  void _showFact() {
    setState(()
    {
      _fact = _facts[_counter % _facts.length];
      _counter ++;
    });

  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar:AppBar(
        title: Text("Fun Facts About Me",
        ),
        backgroundColor: Colors.teal,

      ) ,
      body: Center(
        child: Padding(
            padding: EdgeInsets.all(16.0),
           child: Column(
             mainAxisAlignment:MainAxisAlignment.center,
             children: [
               CircleAvatar(
                 radius: 80,
                 backgroundImage: NetworkImage('https://images.unsplash.com/photo-1506744038136-46273834b3fb'),

               ),
               SizedBox(height: 28,),
               Text(
               "Hi, I'm Sarah!",
                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
               ),
               SizedBox(height: 20,),
               Text(_fact,
               style: TextStyle(fontSize: 18),
               textAlign: TextAlign.center,
               ),
               SizedBox(height: 20,
               ),
               ElevatedButton(onPressed: _showFact, child:const Text("Show Fun Fact"),
               )
             ],
           ),
        ),
      ),
    );
  }
}






