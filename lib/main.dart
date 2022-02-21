import 'package:flutter/material.dart';
import 'package:navigation_practise/HeroModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/second': (context) => SecondScreen(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();

  static List heroNames = [
    'Naruto Uzumaki',
    'Tanjiro Kamado',
    'Sōma Yukihira',
    'Light Yagami',
    'Tokita Ohma'
  ];

  static List url = [
    'https://64.media.tumblr.com/034b042cad6de234b7e4cb4921bacbd2/2686725cf37f296a-92/s1280x1920/c85d21793688c2cb524a4c7e5b153690582d25a0.jpg',
    'https://data.whicdn.com/images/339306307/original.jpg',
    'https://wallpapercave.com/uwp/uwp1196802.jpeg',
    'https://wallpapercave.com/uwp/uwp907745.jpeg',
    'https://i.pinimg.com/originals/28/c8/ae/28c8ae4eccd74ba7a0da6517e2443656.png',
  ];

  static List desc = [
    'Naruto Uzumaki (うずまきナルト, Uzumaki Naruto) is a shinobi of Konohagakure\s Uzumaki clan. He became the jinchūriki of the Nine-Tails on the day of his birth ',
    'Tanjiro Kamado (竈門 炭治郎) is the main protagonist of the prominent anime/manga series, Demon Slayer: Kimetsu no Yaiba. He is also the older brother of Nezuko Kamado and is the oldest child of the Kamado family',
    'Sōma Yukihira is the main protagonist of Food Wars!. He is the son of Jōichirō Yukihira, the proud owner of Restaurant Yukihira.',
    'Light Yagami (夜神月, Yagami Raito) is the main protagonist of the Death Note series. After discovering the Death Note, he decides to use it to rid the world of criminals.',
    'Tokita Ohma (十と鬼き蛇た 王おう馬ま, Tokita Ōma; "Ohma Tokita"), also known as The Asura[note] (阿ア修シュ羅ラ, Ashura), is a man who loves to fight. He entered into the Kengan Association, fighting for the Nogi Group.',
  ];

  final List<HeroModel> HeroData = List.generate(
      heroNames.length,
      (index) =>
          HeroModel('${heroNames[index]}', '${url[index]}', '${desc[index]}'));
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => const SecondScreen()),
            // );
            Navigator.pushNamed(context, '/second');
          },
          child: Text('Move to 2nd Screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second SCreen'),
      ),
      body: Center(
          child: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text('Move Back'),
      )),
    );
  }
}
