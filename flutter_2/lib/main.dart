import 'package:flutter/material.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Parcial with Flutter';
    return MaterialApp(
      // title: appTitle,
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              const SizedBox(
                width: double.infinity,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 94, 153, 201),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Use Text Short',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 15.0,
                        ),
                      ),
                                        
                      Text(
                        'Use Text Medium',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        'Use Text Big',
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 30.0,
                        ),
                      ), 
                  
                    ],
                  ),
                ),
              ),
              ListTile(title: const Text('Option #1'), onTap: () {}),
              ListTile(title: const Text('Option #2'), onTap: () {}),
              ListTile(title: const Text('Option #3'), onTap: () {}),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text(appTitle),
          // backgroundColor: const Color.fromARGB(255, 117, 121, 122),
        ),
        // Diferencia entre SingleChildScrollView + Column vs ListView
        body: const SingleChildScrollView(
          child: Column(
            children: [
              MyButton(),
              TextSection(
                description:
                    'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
                    'Bernese Alps. Situated 1,578 meters above sea level, it '
                    'is one of the larger Alpine Lakes. A gondola ride from '
                    'Kandersteg, followed by a half-hour walk through pastures '
                    'and pine forest, leads you to the lake, which warms to 20 '
                    'degrees Celsius in the summer. Activities enjoyed here '
                    'include rowing, and riding the summer toboggan run.',
              ),
              twoButton(),
              TextsSection(
                description:
                    'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
                    'Bernese Alps. Situated 1,578 meters above sea level, it '
                    'is one of the larger Alpine Lakes. A gondola ride from '
                    'Kandersteg, followed by a half-hour walk through pastures '
                    'and pine forest, leads you to the lake, which warms to 20 '
                    'degrees Celsius in the summer. Activities enjoyed here '
                    'include rowing, and riding the summer toboggan run.'
                    'Lake Oeschinen lies at the foot of the Blüemlisalp in the '
                    'Bernese Alps. Situated 1,578 meters above sea level, it '
                    'is one of the larger Alpine Lakes. A gondola ride from '
                    'Kandersteg, followed by a half-hour walk through pastures '
                    'and pine forest, leads you to the lake, which warms to 20 '
                    'degrees Celsius in the summer. Activities enjoyed here '
                    'include rowing, and riding the summer toboggan run.',
              ),
              TextFinal(
                description:
                    'End on the page'
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//button icon two
class twoButton extends StatelessWidget {
  const twoButton({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
         
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: Size(88, 36),
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0),)),
            onPressed: () {},
            child: Icon(
              Icons.android,
              color: Colors.white,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(88, 36),
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0),)),
            onPressed: () {},
            child: Icon(
              Icons.apple,
              color: Colors.white,
            ),
          ),
        ],
      ),
      
      // child: SizedBox.shrink(), // Sin texto
    );
  }
}
//button tricolor

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child:Column(
        
        children: [
          Container(
            height: 30,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.yellow,Colors.blue, Colors.red],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
        Container(
            margin: const EdgeInsets.all(0),
            height: 30,
            width: 200,
            color: Colors.blue,
          ),
          Container(
            margin: const EdgeInsets.all(0),
            height: 30,
            width: 1000,
            color: Colors.red,
          ),
        ],
      ),
      
      // child: SizedBox.shrink(), // Sin texto
    );
  }
}
class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  location,
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const FavoriteWidget(),
        ],
      ),
    );
  }
}
class TextsSection extends StatelessWidget {
  const TextsSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(112),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}
class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}
class TextFinal extends StatelessWidget {
  const TextFinal({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      
      padding: const EdgeInsets.all(12),
      child: Text(  
        description,
        style: TextStyle(fontSize: 44,color: Colors.indigoAccent),
        textAlign: TextAlign.center,
        softWrap: true,
      ),
    );
  }
}
// Clases que llamo dentro de mis clases de MyApp (Tercer nivel de jerarquia)
class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 45;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.center,
            icon: (_isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        Text('$_favoriteCount'),
      ],
    );
  }
}