import 'package:flutter/material.dart';

import 'task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
