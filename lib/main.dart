import 'package:flutter/material.dart';
 
void main() => runApp(MyAppIteso());
 
class MyAppIteso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  Home createState() => Home();
}

class Home extends State<HomePage> {
  
  bool isPressedC = false;//bandera booleana para Correo
  bool isPressedL = false;//bandera booleana para Llamada
  bool isPressedR = false;//bandera booleana para Ruta

  int likeCounter = 0;//contador para likes

  void incrementLike(){
    setState(() {
      likeCounter++;
      print("Like");
    });
  }

  void decrementLike(){
    setState(() {
      likeCounter--;
      print("disLike");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App ITESO'),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          
          Image.network(
            "https://cruce.iteso.mx/wp-content/uploads/sites/123/2018/04/Portada-2-e1525031912445.jpg"
          ),

          SizedBox(
            height: 30,
          ),

          Container(
            margin: EdgeInsets.all(18.0),
            child: Row(
                      children: [
                        Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("El ITESO, Universidad Jesuita de Guadalajara", 
                                      style: TextStyle(
                                        fontWeight: FontWeight.w800
                                      )
                                    ),
                                    Text("San Pedro Tlaquepaque, Jal.",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      )
                                    ),
                                  ],
                                ),
                        
                        
                        
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            
                            children: [
                              
                              IconButton(
                                onPressed: incrementLike, 
                                icon: Icon(
                                  Icons.thumb_up, 
                                  color: Colors.indigo
                                ),
                                padding: EdgeInsets.symmetric(),
                                
                              ),
                              Text("$likeCounter"),
                            ],
                          ),
                        ),
                        
                        
                        
                        Expanded(
                          child: Column(    
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: decrementLike, 
                                icon: Icon(
                                  Icons.thumb_down,
                                  color: Colors.indigo
                                ),
                                
                              ),
                              
                            ],
                          ),
                        ),

                      ],
                  ),
          ),
          
              

          SizedBox(
            height: 40,
          ),

            
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: (){
                      SnackBar correo = SnackBar(
                                          content: Text("Enviar correo", 
                                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                                          backgroundColor: Colors.grey,
                                        );
                      ScaffoldMessenger.of(context).showSnackBar(correo);
                      setState(() {
                        isPressedC = !isPressedC;
                      });
                    }, 
                    icon: Icon(Icons.email, size: 50, color: isPressedC ? Colors.indigo : Colors.black,),
                    
                    padding: EdgeInsets.symmetric(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Correo", style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: (){
                      SnackBar llamada = SnackBar(
                                          content: Text("Hacer llamada", 
                                          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                                          backgroundColor: Colors.grey,
                                        );
                      ScaffoldMessenger.of(context).showSnackBar(llamada);
                      setState(() {
                        isPressedL = !isPressedL;
                      });
                    }, 
                    icon: Icon(Icons.add_ic_call, size: 50, color: isPressedL ? Colors.indigo : Colors.black,), 
                    padding: EdgeInsets.symmetric(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Llamada", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: (){
                      SnackBar ruta = SnackBar(
                                        content: Text("Ir al ITESO", 
                                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                                        backgroundColor: Colors.grey,);
                      ScaffoldMessenger.of(context).showSnackBar(ruta);
                      setState(() {
                        isPressedR = !isPressedR;
                      });
                    }, 
                    icon: Icon(Icons.directions, size: 50, color: isPressedR ? Colors.indigo : Colors.black,), 
                    padding: EdgeInsets.symmetric(),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Ruta", style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              )
            ],
          ),
            

          SizedBox(
            height: 40,
          ),

          Container(
            margin: EdgeInsets.all(18.0),
            child:
              Text(
                "El ITESO, Universidad Jesuita de Guadalajara, es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco, México, fundada en el año 1957. La institución forma parte del Sistema Universitario Jesuita que integra a ocho universidades en México. Fundada en el año de 1957 por el ingeniero José Fernandez del Valle y Ancira, entre otros. A continuación se presente la historia de la institución en periodos de décadas.",
                textAlign: TextAlign.justify,
              ),
          ),
          
          SizedBox(
            height: 25,
          ),
        ],
      ),
    );
  }
}