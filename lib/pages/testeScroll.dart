import 'package:flutter/material.dart';

import '../model/mode_inf_noticias.dart';

class TesteScroll extends StatelessWidget {
  const TesteScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  for (var i = 0; i < tabela.length; i++)
                    Container(
                      child: Column(
                        children: [
                          Image.asset(
                            tabela[i].image,
                            width: 50,
                          ),
                          Text(
                            tabela[i].titulo,
                            style: const TextStyle(
                                color: Color.fromARGB(179, 0, 0, 0),
                                fontSize: 20),
                          ),
                          const Text(' - ',
                              style: TextStyle(
                                  color: Color.fromARGB(179, 0, 0, 0),
                                  fontSize: 20)),
                          Text(tabela[i].data,
                              style: const TextStyle(
                                  color: Color.fromARGB(179, 0, 0, 0),
                                  fontSize: 20)),
                        ],
                      ),
                    )
                ])),
      ),
    );
  }
}
