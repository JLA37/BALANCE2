import 'package:balance_2/pantallas/pantalla_de_ingresos.dart';
import 'package:flutter/material.dart';



class PantallaInicio extends StatefulWidget {
  const PantallaInicio({Key key}) : super(key: key);

  @override
  _PantallaInicioState createState() => _PantallaInicioState();
}

class _PantallaInicioState extends State<PantallaInicio> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar( 
        title: Text("INGRESE TIPO DE MOVIMIENTO"),

      ),
      backgroundColor: Colors.deepOrange,
      body: Center( 
        child : Text("+ PARA INGRESO O - PARA EGRESO")
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: 
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              heroTag: 'PantallaInicio',
              child: const Icon(Icons.trending_up),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder:(context) => PantallaIngreso(
                    
                  ))

                );
              },
            ),

            SizedBox (width: 20),

            FloatingActionButton(
              
              child: const Icon(Icons.trending_down),
              onPressed: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PantallaIngreso()),
              );
              },
            ),

          ],
        ),
        
        
      
      
      );
    
  }
} 


