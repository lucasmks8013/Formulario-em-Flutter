import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/my_checkbox.dart';
import 'package:flutter_application_1/widgets/my_radio.dart';
import 'package:flutter_application_1/widgets/my_text_field.dart';
import 'package:flutter_application_1/widgets/mytitle.dart';
import 'package:google_fonts/google_fonts.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Formulário Flutter", style: GoogleFonts.uchen()),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              MyTitle(title: "Dados pessoais"),

              SizedBox(
                width: double.infinity,
                child: MyTextField(title: "Nome:"),
              ),

              SizedBox(height: 15),

              SizedBox(
                width: double.infinity,
                child: MyTextField(title: "Datade nascimento:"),
              ),

              SizedBox(height: 15),

              MyTitle(title: "Gênero"),

              SizedBox(height: 15),

              Row(
                //mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MyRadio(title: "Masculino"),
                  MyRadio(title: "Feminino"),
                ],
              ),

              SizedBox(height: 15),

              MyTitle(title: "Preferências"),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MyCheckbox(title: "Música"),
                  MyCheckbox(title: "Filmes E Series"),
                  MyCheckbox(title: "Culinaria"),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  MyCheckbox(title: "Musica"),
                  MyCheckbox(title: "Filmes E Series"),
                  MyCheckbox(title: "Culinaria"),
                ],
              ),

              SizedBox(height: 15),
              MyTitle(title: "Escolaridade"),
              LinearProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
