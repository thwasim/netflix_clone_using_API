import 'package:flutter/material.dart';
import 'package:netfix_ui/description.dart';

class ComingMovies extends StatelessWidget {

  final List coming;

  const ComingMovies({ Key? key, required this.coming}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Up Coming Movies',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
            const SizedBox(height: 10),
            SizedBox(
                height: 270,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: coming.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Description(
                                      name: coming [index]['title'],
                                      bannerurl:
                                          'https://image.tmdb.org/t/p/w500' +
                                              coming[index]['backdrop_path'],
                                      posterurl:
                                          'https://image.tmdb.org/t/p/w500' +
                                              coming[index]['poster_path'],
                                      description: coming[index]['overview'],
                                      vote: coming[index]['vote_average']
                                          .toString(),
                                      Launch_on: coming[index]
                                          ['release_date'],
                                    )));
                        },
                        child: SizedBox(
                          width: 300,
                          child: Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://image.tmdb.org/t/p/w500' +
                                            coming[index]['poster_path']),
                                            fit: BoxFit.cover,
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
