import 'package:flutter/material.dart';
import 'package:netfix_ui/widgets/coming.dart';
import 'package:netfix_ui/widgets/toprated.dart';
import 'package:netfix_ui/widgets/trending.dart';
import 'package:netfix_ui/widgets/tv.dart';
import 'package:tmdb_api/tmdb_api.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final String apikey = '2edf5b471896083b2faa298313858789';
  final String readaccesstoken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIyZWRmNWI0NzE4OTYwODNiMmZhYTI5ODMxMzg1ODc4OSIsInN1YiI6IjYyYmE3NjU0MmUyYjJjMDMxZWI2MmEzYiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.PtXZ0YXOZuD-ajnQFYNTGEdW87Vmvxz5i_SPFzO8Ino';
  List trendingmovies = [];
  List topratedmovies = [];
  List tv = [];
  List coming = [];

  @override
  void initState() {
     loadmovies();
    super.initState();
   
  }

  loadmovies() async {
    TMDB tmdbWithCustomLogs = TMDB(
      ApiKeys(apikey, readaccesstoken),
      logConfig: const ConfigLogger(
        showLogs: true,
        showErrorLogs: true,
      ),
    );

    Map trendingresult = await tmdbWithCustomLogs.v3.trending.getTrending();
    Map topratedresult = await tmdbWithCustomLogs.v3.movies.getTopRated();
    Map tvresult = await tmdbWithCustomLogs.v3.tv.getPopular();
    Map comingresult = await tmdbWithCustomLogs.v3.movies.getPopular();

    print('..............................${trendingresult}');
    setState(() {
      trendingmovies = trendingresult['results'];
      topratedmovies = topratedresult['results'];
      tv = tvresult['results'];
      coming = comingresult['results'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      body: CustomScrollView(
        
        slivers: <Widget>[
          SliverAppBar(
            collapsedHeight: 90,
            centerTitle: null,
            toolbarHeight: 90,
            title: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.14,
                  top: MediaQuery.of(context).size.height * 0.05),
              child: Row(
                children: [
                  const Text(
                    'TV Show',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.08,
                  ),
                  const Text(
                    'TV Show',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.08,
                  ),
                  Row(
                    children: const [
                      Text(
                        'TV Show',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.black54,
            expandedHeight: 500,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                background: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTxb7A9X-FoM6kcMiKTeoAa92cMutRrAvTqiQYUUGAFktPZbrLM'),
                      fit: BoxFit.cover)),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    SafeArea(
                      child: AppBar(
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        leading: Image.network(
                            'https://user-images.githubusercontent.com/33750251/59487006-313d6080-8e73-11e9-8c50-3a5660761138.png'),
                        actions: [
                          const Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          Image.asset('assets/male.png')
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.37,
                      ),
                      child: Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 60,
                                  spreadRadius: 55,
                                  color: Colors.black.withOpacity(0.9),
                                )
                              ]),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'offbeat -',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'psychological -',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'thriller ',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.add,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          'My List',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255),
                                              fontSize: 10),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      color: Colors.white,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.043,
                                      child: Row(children: [
                                        SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.03),
                                        const Icon(Icons.play_arrow),
                                        const Text('Play'),
                                        SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.04)
                                      ]),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: const [
                                        Icon(
                                          Icons.info_outline,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          'info',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
          ),
          TrendingMovies(trending: trendingmovies),
          TopRatedMovies(toprated: topratedmovies),
          TV(tv: tv),
          ComingMovies(coming: coming),
        ],
      ),
    );
  }
}
