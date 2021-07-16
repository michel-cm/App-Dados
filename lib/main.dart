import 'dart:ui';
import 'package:flutter/material.dart';
import 'dart:math';

main() => runApp(Dados());

class Dados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal.shade800,
        appBar: AppBar(
          backgroundColor: Colors.teal.shade900,
          title: Center(
            child: Text('Dados', style: TextStyle(
              letterSpacing: 1.5,
            ),),
          ),
        ),
        body:Dadoos(),
      ),
    );
  }
}


class Dadoos extends StatefulWidget {
   @override
  _DadosState createState() => _DadosState();
}

class _DadosState extends State<Dadoos> {

  int numeroDadoEsquerdo = 5 ;
  int numeroDadoDireito = 6 ;

  @override
  Widget build(BuildContext context) {
    return Center(
       child: Row(         
         children: [
           Expanded(child: TextButton(onPressed: (){
             setState(() {
               numeroDadoEsquerdo = Random().nextInt(6) + 1;         
              });
             },
             child: Image.asset('imagens/dado$numeroDadoEsquerdo.png'
              ),
           ),
           ),
           Expanded(child: TextButton( onPressed: (){
             setState(() {
               numeroDadoDireito = Random().nextInt(6) + 1;         
              });
             },
             child: Image.asset('imagens/dado$numeroDadoDireito.png'
              ),
           ),
           ),
         ],
       ),
    );
  }
}