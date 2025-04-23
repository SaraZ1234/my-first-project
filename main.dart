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
"I love to travel with Khadija, Sania and Suleman",
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
                 backgroundImage: NetworkImage('https://www.google.com/imgres?q=image%20in%20jpg%20smaller%20circular%20logo&imgurl=https%3A%2F%2Fimg.freepik.com%2Ffree-psd%2Frestaurant-vintage-badge-template-psd-set-remixed-from-public-domain-artworks_53876-141767.jpg%3Fsemt%3Dais_hybrid%26w%3D740&imgrefurl=https%3A%2F%2Fwww.freepik.com%2Ffree-photos-vectors%2Fsmall-circle-logo&docid=Ovzj9709aykOHM&tbnid=LUe9d5DusHWxqM&vet=12ahUKEwi9kbH99eiMAxXYSfEDHVDwIDsQM3oECFoQAA..i&w=740&h=740&hcb=2&ved=2ahUKEwi9kbH99eiMAxXYSfEDHVDwIDsQM3oECFoQAA'),

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






