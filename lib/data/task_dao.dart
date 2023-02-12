import 'package:futter_projeto/components/task.dart';
import 'package:futter_projeto/data/database.dart';
import 'package:sqflite/sqflite.dart';

class TaskDao {
  static const String tableSql = 'CREATE TABLE $_tablename('
      '$_name TEXT, '
      '$_difficulty INTEGER, '
      '$_image TEXT)';

  static const String _tablename = 'taskTable';
  static const String _name = 'name';
  static const String _difficulty = 'difficulty';
  static const String _image = 'image';

  save(Task taskSaved) async {
    print('Iniciando o save: ');
    final Database database = await getDatabase();
    var intemExists = await find(taskSaved.nome);
    Map<String, dynamic> taskMap = toMap(taskSaved);
    if (intemExists.isEmpty) {
      print('a tarefa não existia');
      return await database.insert(_tablename, taskMap);
    } else {
      print('A tarefa já existia!');
      return await database.update(_tablename, taskMap,
          where: '$_name = ?', whereArgs: [taskSaved.nome]);
    }
  }

  Map<String, dynamic> toMap(Task task) {
    print('Convertendo tarefa em Map: ');
    final Map<String, dynamic> taskMap = Map();
    taskMap[_name] = task.nome;
    taskMap[_difficulty] = task.dificuldade;
    taskMap[_image] = task.foto;
    return taskMap;
  }

  //Função que cria um mapa do banco de dados
  Future<List<Task>> findAll() async {
    print('Acessando o findAll: ');
    final Database database = await getDatabase();
    final List<Map<String, dynamic>> result = await database.query(_tablename);
    print('Procurando dados no banco de dados... encontrado: $result');
    return toList(result);
  }

  //Função que converte o mapa em uma lista de tarefas
  List<Task> toList(List<Map<String, dynamic>> mapTasksList) {
    print('Convertendo to list:');
    final List<Task> tasks = [];
    for (Map<String, dynamic> row in mapTasksList) {
      final Task task = Task(row[_name], row[_image], row[_difficulty]);
      tasks.add(task);
    }
    print('Lista de tarefas $tasks');
    return tasks;
  }

  Future<List<Task>> find(String taskName) async {
    print('Acessando find: ');
    final Database database = await getDatabase();

    final List<Map<String, dynamic>> result = await database.query(
      _tablename,
      where: '$_name = ?',
      whereArgs: [taskName],
    );
    print('Tarefa encontrada: ${toList(result)}');
    return toList(result);
  }

  delete(String taskName) async {
    print('Deletando tarefa: $taskName');
    final Database database = await getDatabase();
    return database.delete(
      _tablename,
      where: '$_name = ?',
      whereArgs: [taskName],
    );
  }
}
