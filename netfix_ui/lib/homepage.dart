import 'package:flutter/material.dart';
import 'package:tmdb_api/tmdb_api.dart';

class Myhome extends StatefulWidget {
  const Myhome({Key? key}) : super(key: key);

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  List trendingmovies = [];

  final String apikey = 'd9479731a4afed0c0780f951d8dbd5e5 ';

  final readaccesstoken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkOTQ3OTczMWE0YWZlZDBjMDc4MGY5NTFkOGRiZDVlNSIsInN1YiI6IjYyYWQ2M2U0ZWI2NGYxMDA2NDMxMTk2NSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.KG-LrxvlkbDho30U4XNm9QWnSA0dv4IuJlvA9H4qPxg';

  @override
  void initState() {
    loadmovies();
    super.initState();
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
                                        onPressed: () {
                                          loadmovies();
                                        },
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
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Popular On Netflix',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              width: 170,
              height: 170,
              child: ListView.builder(
                  primary: false,
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return Container(
                      width: 170,
                      height: 170,
                      child: Image.network(
                          'https://m.media-amazon.com/images/M/MV5BMGRmMzMyOTEtMzZlMy00MTRmLTg2ZDMtYTdmNWM2YzIyNGEyXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg'),
                    );
                  })),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(14.0),
              child: Text(
                'Now On Treding',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              width: 170,
              height: 170,
              child: ListView.builder(
                  primary: false,
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return Container(
                      width: 170,
                      height: 170,
                      child: Image.network(
                          'https://m.media-amazon.com/images/M/MV5BMGRmMzMyOTEtMzZlMy00MTRmLTg2ZDMtYTdmNWM2YzIyNGEyXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg'),
                    );
                  })),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(14.0),
              child: Text(
                'Top Rated',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              width: 170,
              height: 170,
              child: ListView.builder(
                  primary: false,
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return Container(
                      width: 170,
                      height: 170,
                      child: Image.network(
                          'https://m.media-amazon.com/images/M/MV5BMGRmMzMyOTEtMzZlMy00MTRmLTg2ZDMtYTdmNWM2YzIyNGEyXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg'),
                    );
                  })),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(14.0),
              child: Text(
                'Coming',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              width: 300,
              height: 300,
              child: ListView.builder(
                  primary: false,
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: ((context, index) {
                    return Container(
                      width: 300,
                      height: 300,
                      child: Image.network(
                          'https://m.media-amazon.com/images/M/MV5BMGRmMzMyOTEtMzZlMy00MTRmLTg2ZDMtYTdmNWM2YzIyNGEyXkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg'),
                    );
                  })),
            ),
          ),
        ],
      ),
    );
  }

  loadmovies() async {
    TMDB tmdbwithcustomlogs = TMDB(ApiKeys(apikey, readaccesstoken),
        logConfig: const ConfigLogger(
          showLogs: true,
          showErrorLogs: true,
        ));
    Map trendingresult = await tmdbwithcustomlogs.v3.trending.getTrending();

    setState(() {
      trendingmovies = trendingresult['results'];
    });
  }
}
