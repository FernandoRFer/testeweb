import 'package:flutter/material.dart';

import '../model/mode_inf_noticias.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _HomeState();
}

class _HomeState extends State<Home2> {
  List<InfN> inf = [];
  //List<InfN> tabela = InfHome.tabela;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          pageSnapping: false,
          itemCount: tabela.length,
          controller: PageController(viewportFraction: 0.7),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    tabela[index].image,
                    width: 50,
                  ),
                  Text(
                    tabela[index].titulo,
                    style: const TextStyle(
                        color: Color.fromARGB(179, 0, 0, 0), fontSize: 20),
                  ),
                  const Text(' - ',
                      style: TextStyle(
                          color: Color.fromARGB(179, 0, 0, 0), fontSize: 20)),
                  Text(tabela[index].data,
                      style: const TextStyle(
                          color: Color.fromARGB(179, 0, 0, 0), fontSize: 20)),
                ]);
          }),
    );
  }
}
