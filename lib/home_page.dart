import 'package:flutter/material.dart';
import 'drawer.dart';
import 'model/mode_inf_noticias.dart';

class HomePage extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<InfN> inf = [];
  //List<InfN> tabela = InfHome.tabela;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final bool isMobile = constraints.maxWidth < 600;
      return Scaffold(
        appBar: AppBar(),
        // ignore: prefer_const_constructors
        drawer: isMobile ? Menu() : null,
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 1200),
                child: isMobile
                    ? null
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Expanded(
                              child: Center(
                                child: PopupMenuButton(
                                    tooltip: 'Produtos',
                                    position: PopupMenuPosition.under,
                                    onSelected: (item) {},
                                    itemBuilder: (BuildContext context) =>
                                        <PopupMenuEntry>[
                                          const PopupMenuItem(
                                            child: Text('Item 1'),
                                          ),
                                          const PopupMenuItem(
                                            child: Text('Item 2'),
                                          ),
                                          const PopupMenuItem(
                                            child: Text('Item 3'),
                                          ),
                                          const PopupMenuItem(
                                            child: Text('Item 4'),
                                          ),
                                        ],
                                    child: const Text('EMPRESA')),
                              ),
                            ),
                            Expanded(
                              child: Center(
                                child: PopupMenuButton(
                                    tooltip: 'Produtos',
                                    position: PopupMenuPosition.under,
                                    // Callback that sets the selected popup menu item.
                                    onSelected: (item) {},
                                    itemBuilder: (BuildContext context) =>
                                        <PopupMenuEntry>[
                                          const PopupMenuItem(
                                            child: Text('Item 1'),
                                          ),
                                          const PopupMenuItem(
                                            child: Text('Item 2'),
                                          ),
                                          const PopupMenuItem(
                                            child: Text('Item 3'),
                                          ),
                                          const PopupMenuItem(
                                            child: Text('Item 4'),
                                          ),
                                        ],
                                    child: const Text('PRODUTOS')),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color.fromARGB(
                                            0, 255, 255, 255))),
                                onPressed: () {},
                                child: const Text('Pos venda'),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color.fromARGB(
                                            0, 255, 255, 255))),
                                onPressed: () {
                                  Navigator.of(context).pushNamed('/Historia');
                                },
                                child: const Text('Historia'),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color.fromARGB(
                                            0, 255, 255, 255))),
                                onPressed: () {},
                                child: const Text('Pos venda'),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color.fromARGB(
                                            0, 255, 255, 255))),
                                onPressed: () {},
                                child: const Text('Pos venda'),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color.fromARGB(
                                            0, 255, 255, 255))),
                                onPressed: () {},
                                child: const Text('Pos venda'),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        const Color.fromARGB(
                                            0, 255, 255, 255))),
                                onPressed: () {},
                                child: const Text('Pos venda'),
                              ),
                            ),
                          ]),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                alignment: Alignment.topCenter,
                constraints:
                    const BoxConstraints(maxHeight: 600, maxWidth: 1200),
                child: ListView.builder(
                    itemCount: tabela.length,
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
                                  color: Color.fromARGB(179, 0, 0, 0),
                                  fontSize: 20),
                            ),
                            const Text(' - ',
                                style: TextStyle(
                                    color: Color.fromARGB(179, 0, 0, 0),
                                    fontSize: 20)),
                            Text(tabela[index].data,
                                style: const TextStyle(
                                    color: Color.fromARGB(179, 0, 0, 0),
                                    fontSize: 20)),
                          ]);
                    }),
              ),
            ),
          ]),
        ),
      );
    });
  }
}
