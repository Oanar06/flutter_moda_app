import 'package:flutter/material.dart';
import 'package:flutter_moda_app/detay.dart';

void main() => runApp(const ModaApp());

class ModaApp extends StatelessWidget {
  const ModaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
          color: Colors.white,
          child: TabBar(
            controller: tabController,
            tabs: const [
              Tab(
                icon: Icon(Icons.more, color: Colors.grey, size: 22),
              ),
              Tab(
                icon: Icon(Icons.play_arrow, color: Colors.grey, size: 22),
              ),
              Tab(
                icon: Icon(Icons.navigation, color: Colors.grey, size: 22),
              ),
              Tab(
                icon: Icon(Icons.supervised_user_circle,
                    color: Colors.grey, size: 22),
              ),
            ],
          )),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Moda App",
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 22,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.camera_alt),
            onPressed: () {},
            color: Colors.grey,
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.only(top: 10),
        children: <Widget>[
          //Üst taraftaki profil listesi
          SizedBox(
              //color: Colors.blue.shade300,
              height: 140,
              width: double.infinity,
              child: ListView(
                padding: const EdgeInsets.all(10),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                  const SizedBox(
                    width: 30,
                  ),
                  listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
                  const SizedBox(
                    width: 30,
                  ),
                  listeElemani('assets/model3.jpeg', 'assets/dress.jpg'),
                  const SizedBox(
                    width: 30,
                  ),
                  listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
                  const SizedBox(
                    width: 30,
                  ),
                  listeElemani('assets/model2.jpeg', 'assets/chanellogo.jpg'),
                  const SizedBox(
                    width: 30,
                  ),
                  listeElemani('assets/model3.jpeg', 'assets/chanellogo.jpg'),
                  const SizedBox(
                    width: 30,
                  ),
                ],
              )),

          //Card
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              borderRadius: BorderRadius.circular(16),
              elevation: 4,
              // color: Colors.blue.shade300,
              child: Container(
                  height: 500,
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(38),
                                image: const DecorationImage(
                                    image: AssetImage('assets/model1.jpeg'),
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 160,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const <Widget>[
                                Text(
                                  "Papatya",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "34 dakika önce",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 10,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.more_vert,
                            color: Colors.grey,
                            size: 22,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                         "Bu sitede modern ve şık fermuarlı bir ceket bulunmaktadır. "    
                         "Tavsiye ediniz.",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>  Detay(imgPath: 'assets/modelgrid1.jpeg')));
                            },
                            child: Hero(
                              tag:'assets/modelgrid1.jpeg',
                              child: Container(
                                height: 200,
                                width:
                                    (MediaQuery.of(context).size.width - 50) / 2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: const DecorationImage(
                                      image: AssetImage('assets/modelgrid1.jpeg'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Detay(
                                          imgPath: 'assets/modelgrid2.jpeg')));
                                },
                                child: Hero(
                                  tag:'assets/modelgrid2.jpeg',
                                  child: Container(
                                    height: 100,
                                    width:
                                        (MediaQuery.of(context).size.width - 120) /
                                            2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image:
                                              AssetImage('assets/modelgrid2.jpeg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              InkWell(
                                 onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => Detay(
                                          imgPath: 'assets/modelgrid3.jpeg')));
                                },
                                child: Hero(
                                  tag: 'assets/modelgrid3.jpeg',
                                  child: Container(
                                    height: 100,
                                    width:
                                        (MediaQuery.of(context).size.width - 120) /
                                            2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: const DecorationImage(
                                          image:
                                              AssetImage('assets/modelgrid3.jpeg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Container(
                              height: 25,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.brown.withOpacity(0.5)),
                              child: const Center(
                                child: Text(
                                  "#Mavi",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 10,
                                      color: Colors.brown),
                                ),
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                              height: 25,
                              width: 75,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.brown.withOpacity(0.5)),
                              child: const Center(
                                child: Text(
                                  "#Coton",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 10,
                                      color: Colors.brown),
                                ),
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.reply,
                            color: Colors.brown.withOpacity(0.4),
                            size: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "1.7k",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                color: Colors.grey),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Icon(
                            Icons.comment,
                            color: Colors.brown.withOpacity(0.4),
                            size: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "325",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                color: Colors.grey),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 235,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Icon(
                                  Icons.favorite,
                                  color: Colors.red.shade700,
                                  size: 30,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  "2.3k",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 16,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(38),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: (BoxFit.cover)),
                )),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        image: AssetImage(logoPath), fit: (BoxFit.contain)),
                  )),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.brown),
          child: const Center(
            child: Text("Takip Et",
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14,
                    color: Colors.white)),
          ),
        )
      ],
    );
  }
}
