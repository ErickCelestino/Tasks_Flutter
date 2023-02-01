import 'package:flutter/material.dart';

import 'difficulty.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool opacidade = true;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Scaffold(
          appBar: AppBar(
            leading: Container(),
            title: Text('Tarefas'),
          ),
          body: AnimatedOpacity(
            opacity: opacidade ? 1 : 0,
            duration: Duration(milliseconds: 800),
            child: ListView(
              children: [
                Task(
                    'Aprender Flutter',
                    'http://pbs.twimg.com/media/Eu7m692XIAEvxxP?format=png&name=large',
                    3),
                Task(
                    'Trabalhar',
                    'https://portal.fgv.br/sites/portal.fgv.br/files/styles/noticia_geral/public/noticias/06/22/sobrecarga-de-trabalho.jpg?itok=n1R3_JgJ',
                    5),
                Task(
                    'Estudar',
                    'https://ichef.bbci.co.uk/news/1024/branded_portuguese/15E2A/production/_119624698_matheus2.jpg',
                    4)
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                opacidade = !opacidade;
              });
            },
            child: Icon(Icons.remove_red_eye),
          ),
        ));
  }
}

//

class Task extends StatefulWidget {
  final String foto;
  final String nome;
  final int dificuldade;
  const Task(this.nome, this.foto, this.dificuldade, {Key? key})
      : super(key: key);
  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4), color: Colors.green),
              height: 140,
            ),
            Column(children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.white,
                ),
                height: 100,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.black26,
                          ),
                          width: 72,
                          height: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.network(
                              widget.foto,
                              fit: BoxFit.cover,
                            ),
                          )),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 200,
                              child: Text(
                                widget.nome,
                                style: TextStyle(
                                    fontSize: 24,
                                    overflow: TextOverflow.ellipsis),
                              )),
                          Difficulty(
                            dificultyLevel: widget.dificuldade,
                          )
                        ],
                      ),
                      Container(
                          height: 52,
                          width: 52,
                          child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  nivel++;
                                });
                              },
                              child: Column(
                                children: [
                                  Icon(Icons.arrow_drop_up),
                                  Text(
                                    'UP',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              )))
                    ]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: (widget.dificuldade > 0)
                              ? (nivel / widget.dificuldade) / 10
                              : 1,
                        ),
                        width: 200,
                      )),
                  Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        'Nivel: $nivel',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ))
                ],
              )
            ])
          ],
        ),
      ),
    );
  }
}
