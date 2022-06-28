import 'package:flutter/material.dart';
import 'package:netfix_ui/description.dart';

class TopRatedMovies extends StatelessWidget {

  final List toprated;

  const TopRatedMovies({ Key? key, required this.toprated}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Top Rated Movies',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
            const SizedBox(height: 10),
            SizedBox(
                height: 270,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: toprated.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Description(
                                      name: toprated [index]['title'],
                                      bannerurl:
                                          'https://image.tmdb.org/t/p/w500' +
                                              toprated[index]['backdrop_path'],
                                      posterurl:
                                          'https://image.tmdb.org/t/p/w500' +
                                              toprated[index]['poster_path'],
                                      description: toprated[index]['overview'],
                                      vote: toprated[index]['vote_average']
                                          .toString(),
                                      Launch_on: toprated[index]
                                          ['release_date'],
                                    )));
                        },
                        child: SizedBox(
                          width: 140,
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://image.tmdb.org/t/p/w500' +
                                            toprated[index]['poster_path']),
                                  ),
                                ),
                                height: 200,
                              ),
                            ],
                          ),
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
