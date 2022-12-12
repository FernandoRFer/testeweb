import 'package:flutter/material.dart';

class Historia extends StatefulWidget {
  const Historia({super.key});

  @override
  State<Historia> createState() => _HistoriaState();
}

class _HistoriaState extends State<Historia> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        //appBar: AppBar(),
        body: Container(
          color: const Color.fromARGB(0, 0, 0, 0),
          child: ListView(
            children: const [
              Text(
                  'A veia pioneira da MTB faz parte da história da evolução tecnológica nos postos de combustíveis do Brasil: 1993: Primeiro posto automatizado com bombas eletrônicas na Marginal do Tietê na cidade de São Paulo, com pista e lojas integradas')
            ],
          ),
        ),
      ),
    );
  }
}
