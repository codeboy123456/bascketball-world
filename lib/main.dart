import 'dart:convert';
import 'dart:ui';

import 'package:dylanwalletui/player_card.dart';
import 'package:dylanwalletui/stats_widget.dart';
import 'package:dylanwalletui/title_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map playerData = {};
  int selectedIndex = 0;
  Future<void> fetchPlayerData(int id) async {
    http.Response apiData = await http.get(Uri.parse(
        'http://data.nba.net/10s/prod/v1/2022/players/${id}_profile.json'));
    Map playerMap = jsonDecode(apiData.body)['league']['standard']['stats']
        ['careerSummary'];
    print(playerMap);
    playerData = playerMap;
    setState(() {});
  }

  @override
  void initState() {
    fetchPlayerData(2544);
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {PointerDeviceKind.mouse, PointerDeviceKind.touch},
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              TitleWidget(),
              SizedBox(
                height: 200,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          selectedIndex = 0;
                          fetchPlayerData(2544);
                        },
                        child: PlayerCardWidget(
                          image:
                              'https://bdc2020.o0bc.com/wp-content/uploads/2022/09/Lebron-6333a672f3dec-768x432.jpg',
                          name: 'Labron James',
                          selected: selectedIndex == 0 ? true : false,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          selectedIndex = 1;
                          fetchPlayerData(201939);
                        },
                        child: PlayerCardWidget(
                          image:
                              'https://fadeawayworld.net/.image/ar_4:3%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cq_auto:good%2Cw_1200/MTkyNjA1ODA2MTI5MDYzNjcz/usatsi_19118708.jpg',
                          name: 'Stephen Curry',
                          selected: selectedIndex == 1 ? true : false,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          selectedIndex = 2;
                          fetchPlayerData(201142);
                        },
                        child: PlayerCardWidget(
                          image:
                              'https://i.cbc.ca/1.6559631.1661271283!/fileImage/httpImage/image.jpg_gen/derivatives/16x9_780/durant-kevin-220425-1180.jpg',
                          name: 'Kevin Durant',
                          selected: selectedIndex == 2 ? true : false,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          selectedIndex = 3;
                          fetchPlayerData(101108);
                        },
                        child: PlayerCardWidget(
                          image:
                              'https://library.sportingnews.com/styles/twitter_card_120x120/s3/2021-08/chris-paul-getty-ftr-061621_18bepclw5abm8zp0j81uw0mra.jpg?itok=_VPcSZ6A',
                          name: 'Chris Paul',
                          selected: selectedIndex == 3 ? true : false,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          selectedIndex = 4;
                          fetchPlayerData(203999);
                        },
                        child: PlayerCardWidget(
                          image:
                              'https://assets1.cbsnewsstatic.com/hub/i/r/2021/10/27/31bc8c1f-a6e7-4afc-8ceb-1cace8eff5ec/thumbnail/1200x630/ee0931ed0702f4636d7402fe68a6e3d9/nikola-jokic-1-1.jpg',
                          name: 'Nicola Jokic',
                          selected: selectedIndex == 4 ? true : false,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          selectedIndex = 5;
                          fetchPlayerData(203954);
                        },
                        child: PlayerCardWidget(
                          image:
                              'https://whyy.org/wp-content/uploads/2022/09/joel-embiid-ap-2022-09-29.jpg',
                          name: 'Joel Embiid',
                          selected: selectedIndex == 5 ? true : false,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          selectedIndex = 6;
                          fetchPlayerData(1629029);
                        },
                        child: PlayerCardWidget(
                          image:
                              'https://www.sportsnet.ca/wp-content/uploads/2022/02/doncic_luka1280-1.jpg',
                          name: 'Luka Doncic',
                          selected: selectedIndex == 6 ? true : false,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(child: StatsWidget(data: playerData)),
            ],
          ),
        ),
      ),
    );
  }
}
