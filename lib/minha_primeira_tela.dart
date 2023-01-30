// Container(
//         color: Colors.white,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Stack(
//               alignment: AlignmentDirectional.center,
//               children: [
//                 Container(
//                   color: Colors.red,
//                   width: 100,
//                   height: 100,
//                 ),
//                 Container(
//                   color: Colors.amber,
//                   width: 50,
//                   height: 50,
//                 ),
//               ],
//             ),
//             Stack(
//               alignment: AlignmentDiontainer(
//         color: Colors.white,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Stack(
//               alignment: AlignmentDirectional.center,
//               children: [
//                 Container(
//                   color: Colors.red,
//                   width: 100,
//                   height: 100,
//                 ),
//                 Container(
//                   color: Colors.amber,
//                   width: 50,
//                   height: 50,
//                 ),
//               ],
//             ),
//             Stack(
//               alignment: AlignmentDirectional.center,
//               children: [
//                 Container(
//                   color: Colors.amber,
//                   width: 100,
//                   height: 100,
//                 ),
//                 Container(
//                   color: Colors.red,
//                   width: 50,
//                   height: 50,
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   color: Colors.cyan,
//                   height: 50,
//                   width: 50,
//                 ),
//                 Container(
//                   color: Colors.purple,
//                   height: 50,
//                   width: 50,
//                 ),
//                 Container(
//                   color: Colors.orange,
//                   height: 50,
//                   width: 50,
//                 ),
//               ],
//             ),
//             Container(
//               color: Colors.green,
//               height: 30,
//               width: 300,
//               child: Text(
//                 'Diamante Verde',
//                 style: TextStyle(color: Colors.black, fontSize: 28),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   print('Você apertou o botão');
//                 },
//                 child: Text('Aperte o botão'))
//           ],
//         ),
//       ),rectional.center,
//               children: [
//                 Container(
//                   color: Colors.amber,
//                   width: 100,
//                   height: 100,
//                 ),
//                 Container(
//                   color: Colors.red,
//                   width: 50,
//                   height: 50,
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   color: Colors.cyan,
//                   height: 50,
//                   width: 50,
//                 ),
//                 Container(
//                   color: Colors.purple,
//                   height: 50,
//                   width: 50,
//                 ),
//                 Container(
//                   color: Colors.orange,
//                   height: 50,
//                   width: 50,
//                 ),
//               ],
//             ),
//             Container(
//               color: Colors.green,
//               height: 30,
//               width: 300,
//               child: Text(
//                 'Diamante Verde',
//                 style: TextStyle(color: Colors.black, fontSize: 28),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             ElevatedButton(
//                 onPressed: () {
//                   print('Você apertou o botão');
//                 },
//                 child: Text('Aperte o botão'))
//           ],
//         ),
//       ),




// Widget estatico 

//class Tasks extends StatelessWidget {
//   final String nome;
//   const Task(this.nome, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     int nivel = 0;
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         child: Stack(
//           children: [
//             Container(
//               color: Colors.green,
//               height: 140,
//             ),
//             Column(children: [
//               Container(
//                 color: Colors.white,
//                 height: 100,
//                 child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Container(
//                         color: Colors.black26,
//                         width: 72,
//                         height: 100,
//                       ),
//                       Container(
//                           width: 200,
//                           child: Text(
//                             nome,
//                             style: TextStyle(
//                                 fontSize: 24, overflow: TextOverflow.ellipsis),
//                           )),
//                       ElevatedButton(
//                           onPressed: () {
//                             nivel++;
//                             print(nivel);
//                           },
//                           child: Icon(Icons.arrow_drop_up))
//                     ]),
//               ),
//               Text(
//                 'Nivel: $nivel',
//                 style: TextStyle(color: Colors.white, fontSize: 16),
//               )
//             ])
//           ],
//         ),
//       ),
//     );
//   }
// }
