import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
            final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class Navbar extends StatelessWidget {
  const Navbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///Navbar
            return Container(
              padding: const EdgeInsets.all(3.5),
              margin: const EdgeInsets.all(15),
              height: 20.5,
              child:
              Expanded(child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                     OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.transparent
                        )
                      ),
                        child: const Text('BERITA UTAMA',
                        style: TextStyle(
                          color: Colors.black
                        ),
                      ),
                        
                        onPressed: () {
                        Navigator.push(
                          context,
                            MaterialPageRoute(builder: (context) => const BeritaKecil()),
                  );
                        },
                        ),


                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.transparent
                        )
                      ),
                          child: const Text('PERTANDINGAN HARI INI',
                          style: TextStyle(
                          color: Colors.black
                        ),),
                          onPressed: () {
                              Navigator.push(
                          context,
                            MaterialPageRoute(builder: (context) => const BeritaUtama()),
                         );
                        },
                        
                        )


                  ],
              ) ,)
                
            );
  }
}



class BeritaKecil extends StatelessWidget{
  const BeritaKecil({

    Key? key,
  }) : super (key: key);

   @override
  Widget build(BuildContext context) {

  return Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0,top: 20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey)
              ),
              child: 
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(

                        width: 170,
                        height: 100, 
                        decoration: BoxDecoration(  
                          border: Border.all(color: Colors.grey),             
                            image: const DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.fitWidth,
                              image: AssetImage('assets/images/1.jpeg'),  
                            ),                    
                        ),
                      ),
                      Expanded(
                         child : Container(
                          padding: const EdgeInsets.all(5.0),
                          width: 168,
                          height: 100, 
                          alignment: Alignment.center,
                        decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                        child: const Text("Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat", 
                        textAlign: TextAlign.center,style: TextStyle(fontSize: 11)),
                      ),
                      )
                    ],
                    
                  ),

                  Container(
                    height: 30,
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                    child: const Text("Barcelona Feb 13, 2021",
                    style: TextStyle(fontSize: 11)
                    ),
                  ),
                ],
              ),
            );
}
}

class BeritaUtama extends StatelessWidget {
  const BeritaUtama({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple)
              ),
              child: 
              Column(
                children: <Widget>[
                  Container(         
                    height: 150,          
                    decoration: const BoxDecoration(               
                        image: DecorationImage(
                          alignment: Alignment.topCenter,
                           fit: BoxFit.fitWidth,
                          image: AssetImage('assets/images/bola.jpeg'),  
                        ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.all(10.0),
                    child: const Text("Costa Mendekat ke Palmeiras",
                    style: TextStyle(
                      fontSize:20,
                          color:Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ), 

                  Container(
                  padding: const EdgeInsets.all(20.0),
                  alignment: Alignment.centerLeft,
                  color: Colors.purpleAccent,
                  child: const Text("Transfer"),
                  ),
                ],
              ),
            );
  }
}

class Scroll extends StatelessWidget {
  const Scroll({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: LayoutBuilder(
        builder: (BuildContext context,
            BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: viewportConstraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  children: const <Widget>[
                    BeritaKecil(),
                    BeritaKecil(),
                    BeritaKecil(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(   
        title: Text(widget.title),
      ),
      body: 
      
        Column(
          children: const <Widget>[
            Navbar(),
            BeritaUtama(),
             Expanded(child: Scroll()),
            



            ///BERITA ATAS
            // Container(
            //   padding: const EdgeInsets.all(3.5),
            //   margin: const EdgeInsets.all(15),
            //   height: 20.5,
            //   child:
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //       children: const <Widget>[ 
            //       Text("BERITA TERBARU"),     
            //       Text("PERTANDINGAN HARI INI"),
            //       ],
            //     ),
            // ),
            


            ////BERITA UTAMA
            // Container(
            //   margin: const EdgeInsets.all(10.0),
            //   decoration: BoxDecoration(
            //     border: Border.all(color: Colors.purple)
            //   ),
            //   child: 
            //   Column(
            //     children: <Widget>[
            //       Container(         
            //         height: 150,          
            //         decoration: const BoxDecoration(               
            //             image: DecorationImage(
            //               alignment: Alignment.topCenter,
            //                fit: BoxFit.fitWidth,
            //               image: AssetImage('assets/images/bola.jpeg'),  
            //             ),
            //         ),
            //       ),

            //       Container(
            //         margin: const EdgeInsets.all(10.0),
            //         child: const Text("Costa Mendekat ke Palmeiras",
            //         style: TextStyle(
            //           fontSize:20,
            //               color:Colors.black,
            //               fontWeight: FontWeight.bold),
            //         ),
            //       ), 

            //       Container(
            //       padding: const EdgeInsets.all(20.0),
            //       alignment: Alignment.centerLeft,
            //       color: Colors.purpleAccent,
            //       child: const Text("Transfer"),
            //       ),
            //     ],
            //   ),
            // ),




            ////BERITA KECIL
            // Container(
            //   margin: const EdgeInsets.only(left: 10.0, right: 10.0,),
            //   decoration: BoxDecoration(
            //     border: Border.all(color: Colors.grey)
            //   ),
            //   child: 
            //   Column(
            //     children: <Widget>[
            //       Row(
            //         children: <Widget>[
            //           Container(

            //             width: 170,
            //             height: 100, 
            //             decoration: BoxDecoration(  
            //               border: Border.all(color: Colors.grey),             
            //                 image: const DecorationImage(
            //                   alignment: Alignment.center,
            //                   fit: BoxFit.fitWidth,
            //                   image: AssetImage('assets/images/1.jpeg'),  
            //                 ),                    
            //             ),
            //           ),
            //           Expanded(
            //              child : Container(
            //               padding: const EdgeInsets.all(5.0),
            //               width: 168,
            //               height: 100, 
            //               alignment: Alignment.center,
            //             decoration: BoxDecoration(
            //         border: Border.all(color: Colors.grey),
            //       ),
            //             child: const Text("Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat", 
            //             textAlign: TextAlign.center,style: TextStyle(fontSize: 11)),
            //           ),
            //           )
            //         ],
                    
            //       ),

            //       Container(
            //         height: 30,
            //         alignment: Alignment.centerLeft,
            //         width: double.infinity,
            //           decoration: BoxDecoration(
            //             border: Border.all(color: Colors.grey),
            //           ),
            //         child: const Text("Barcelona Feb 13, 2021",
            //         style: TextStyle(fontSize: 11)
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

          ]
        )
    );
  }
}


