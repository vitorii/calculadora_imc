import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculadora de IMC',
              style: TextStyle(fontWeight: FontWeight.bold)),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment
                    .center, // Alinha os itens verticalmente ao centro
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
              Image.asset("img1.png"),
              SizedBox(height: 20),
              _buildTextField('Peso', 'Digite o Peso'),
              SizedBox(height: 10),
              _buildTextField('Altura', 'Digite a altura'),
              SizedBox(height: 10),
              _buildTextField('IMC', 'IMC Calculado'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                      onPressed: () {
                        print('tab 7');
                      },
                      child: Text('7')),
                  TextButton(
                      onPressed: () {
                        print('tab 8');
                      },
                      child: Text('8')),
                  TextButton(
                      onPressed: () {
                        print('tab 9');
                      },
                      child: Text('9')),
                  TextButton(
                      onPressed: () {
                        print('tab Enter');
                      },
                      child: Text('Enter')),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                      onPressed: () {
                        print('tab 4');
                      },
                      child: Text('4')),
                  TextButton(
                      onPressed: () {
                        print('tab 5');
                      },
                      child: Text('5')),
                  TextButton(
                      onPressed: () {
                        print('tab 6');
                      },
                      child: Text('6')),
                  TextButton(
                      onPressed: () {
                        print('tab .');
                      },
                      child: Text('.')),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextButton(
                      onPressed: () {
                        print('tab 1');
                      },
                      child: Text('1')),
                  TextButton(
                      onPressed: () {
                        print('tab 2');
                      },
                      child: Text('2')),
                  TextButton(
                      onPressed: () {
                        print('tab 3');
                      },
                      child: Text('3')),
                  TextButton(
                      onPressed: () {
                        print('tab 0');
                      },
                      child: Text('0')),
                ],
              ),
            ])
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: const [
            //     Text('21150'),
            //     Text('Rai Felippe Miranda'),
            //     Text.rich(TextSpan(children: <TextSpan>[
            //       TextSpan(
            //           text: "Fonte ",
            //           style: TextStyle(fontWeight: FontWeight.w200)
            //         ),
            //       TextSpan(
            //           text: "Bold", style: TextStyle(fontWeight: FontWeight.bold)
            //         )
            //     ])),
            //   ],
            // )
            ),
      ),
    );
  }
}

Widget _buildTextField(String label, String hint) {
  return Container(
    width: 300, // Define uma largura fixa para os TextFields
    child: TextField(
      style: TextStyle(height: 2.0),
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
      ),
    ),
  );
}
