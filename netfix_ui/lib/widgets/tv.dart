


import 'package:flutter/material.dart';

class TV extends StatelessWidget {
  final List tv;

  const TV({Key? key, required this.tv}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Popular TV Shows',
              style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tv.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(5),
                        width: 250,
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        'https://image.tmdb.org/t/p/w500' +
                                            tv[index]['backdrop_path']),
                                    fit: BoxFit.cover),
                              ),
                              height: 140,
                            ),
                          ],
                        ),
                      );
                    }))
          ],
        ),
      ),
    );
  }
}

