import 'package:web/repositorio.dart';
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
  final controller = PageController(initialPage: 1);
  List<Inf_n> inf = [];
  List<Inf_n> tabela = InfHome.tabela;

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
                constraints: BoxConstraints(maxWidth: 1200),
                child: isMobile
                    ? null
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            Expanded(
                              child: Center(
                                child: PopupMenuButton(
                                    tooltip: 'Produtos',
                                    child: Text('EMPRESA'),
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
                                        ]),
                              ),
                            ),
                            Expanded(
                              child: Center(
                                child: PopupMenuButton(
                                    tooltip: 'Produtos',
                                    child: Text('PRODUTOS'),
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
                                        ]),
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                child: Text('Pos venda'),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color.fromARGB(0, 255, 255, 255))),
                                onPressed: () {},
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                child: Text('Historia'),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color.fromARGB(0, 255, 255, 255))),
                                onPressed: () {
                                  Navigator.of(context).pushNamed('/Historia');
                                },
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                child: Text('Pos venda'),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color.fromARGB(0, 255, 255, 255))),
                                onPressed: () {},
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                child: Text('Pos venda'),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color.fromARGB(0, 255, 255, 255))),
                                onPressed: () {},
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                child: Text('Pos venda'),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color.fromARGB(0, 255, 255, 255))),
                                onPressed: () {},
                              ),
                            ),
                            Expanded(
                              child: TextButton(
                                child: Text('Pos venda'),
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Color.fromARGB(0, 255, 255, 255))),
                                onPressed: () {},
                              ),
                            ),
                          ]),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                alignment: Alignment.topCenter,
                constraints: BoxConstraints(maxHeight: 600, maxWidth: 1200),
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
                              style: TextStyle(
                                  color: Color.fromARGB(179, 0, 0, 0),
                                  fontSize: 20),
                            ),
                            Text(' - ',
                                style: TextStyle(
                                    color: Color.fromARGB(179, 0, 0, 0),
                                    fontSize: 20)),
                            Text(tabela[index].data,
                                style: TextStyle(
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
