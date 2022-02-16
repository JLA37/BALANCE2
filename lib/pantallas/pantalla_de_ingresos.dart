import 'package:flutter/material.dart';

class PantallaIngreso extends StatefulWidget {
  const PantallaIngreso({Key key}) : super(key: key);

  @override
  _PantallaIngresoState createState() => _PantallaIngresoState();
}

// class Snackbar extends StatelessWidget {
//   @override
  
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: (''),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('SnackBar Demo'),
//         ),
//         body: SnackBar(content: Text('GUARDANDO INGRESO')),
//       ),
//     );
//   }
// }

class _PantallaIngresoState extends State<PantallaIngreso> {
  @override
  Widget build(BuildContext context) {
    const titulo = 'INSERTE EL VALOR DEL INGRESO';

    return MaterialApp(
      title: titulo,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(titulo),
        ),
        body: const MyCustomForm(

        ),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'POR FAVOR INGRESE UN VALOR';
              }
              return null;
            },
          ),
          

          
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: RaisedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  
                  const SnackBar(content: Text('Almacenando ingreso')
                  );
                }
              },
              child: const Text('Guardar'),
            ),
          ),
        ],
      ),
    );
  }
}