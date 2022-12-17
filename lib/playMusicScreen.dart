//


import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'data.dart';

import 'GameSelectionScreen.dart';

var h;
var w;
bool isPlay = false;
final player = AudioPlayer();
class musicScreen extends StatelessWidget {
  const musicScreen({super.key});
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;


    return MaterialApp(
      // title: 'Flutter layout Demo',
      theme: ThemeData(
        //   primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.white10,
          appBar: AppBar(
            title: const Text('Flutter layout demo'),
          ),
          body:

          Column(
            children: [
              Image.asset(
                'images/bkgMenu.png',
                width: 500,
                height: 240,
                //fit: BoxFit.cover, // can chinh theo kich thuoc
              ),
              SizedBox(
                height: 40,
              ),

              _buildButtonColumn(color, Icons.play_arrow, 'PLAY', 50, context),
// listMusic(),
            ],

          )
    ),
    );
  }
}


Column _buildButtonColumn(Color color, IconData icon, String label,
    double _size, BuildContext context) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Ink(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.indigoAccent, width: 4.0),
          color: Colors.indigo[900],
          // shape: BoxShape.s,
        ),
        child: InkWell(
          //padding:EdgeInsets.all(20.0),
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(children: [
              Icon(
                icon,
                size: _size,
                color: color,
              ),
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: color,
                ),
              ),
            ]),
          ),
          borderRadius: BorderRadius.circular(
              1000.0), //Something large to ensure a circle
          onTap: () {

            if(isPlay == false) {
              print('Đã vào true');

              player.play(AssetSource('audio/ost1.mp3'));
              isPlay = true;
              print('isPlay =  ${isPlay}');
            }else{
              print('Đã vào false');
              print('isPlay =  ${isPlay}');
              player.stop();
              isPlay = false;
            }

            // Navigator.push(context,
            //     MaterialPageRoute(builder: (context) => gameSelection()));

          },
        ),
      ),
    ],
  );
}

Color color = Colors.white;



Widget buttonSection2(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      Column(
        //mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildButtonColumn(color, Icons.notifications, 'notify', 50, context),
          spaceh,
          _buildButtonColumn(color, Icons.settings, 'settings', 50, context),
          spaceh,
          _buildButtonColumn(color, Icons.apps, 'more app', 50, context),
        ],
      ),
      spacew,
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          _buildButtonColumn(color, Icons.play_arrow, '', 170, context),
          spaceh,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildButtonColumn(
                  color, Icons.language, 'translate', 50, context),
              SizedBox(
                width: 20,
              ),
              _buildButtonColumn(color, Icons.exit_to_app, 'exit', 50, context),
            ],
          )
        ],
      )
    ],
  );
}

Widget  listMusic(){

  return Expanded(
   child: ListView.builder(
  itemCount: ListMusic.length,
  itemBuilder: (context, index) {
    return ListView.builder(
      itemCount: ListMusic.length,
      itemBuilder: (context, index) {
        return Card( //                           <-- Card widget
            child: ListTile(
            leading: Text((ListMusic[index].id).toString()),
        title: Text(ListMusic[index].name),
        )
        );
      },
    );
  },
    )
  );
}


class SelectCard extends StatelessWidget {
  const SelectCard({Key? key, required this.List}) : super(key: key);
  final musicList List;

  @override
  Widget build(BuildContext context) {
    //final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return Card(
        color: Colors.lightGreenAccent,
        child: Center(child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
             // Expanded(child: Icon(choice.id, size:50.0, color: textStyle.color)),
              Text(List.name, ),
            ]
        ),
        )
    );
  }
}


Widget spaceh = SizedBox(
  height: 10,
);
Widget spacew = SizedBox(
  width: 10,
);

