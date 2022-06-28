import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String name, description, bannerurl, posterurl, vote, Launch_on;

  const Description(
      {Key? key,
      required this.name,
      required this.description,
      required this.bannerurl,
      required this.posterurl,
      required this.vote,
      required this.Launch_on})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        child: ListView(children: [
          SizedBox(
              height: 500,
              child: Stack(children: [
                Positioned(
                  child: SizedBox(
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      bannerurl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                    bottom: 10, child: Text('⭐ Average Rating - ' + vote,style: const TextStyle(color: Color.fromARGB(255, 255, 0, 0)),)),
              ])),
          Container(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Releasing On - ' + Launch_on,style: const TextStyle(color: Colors.white),
              )),
          Row(
            children: [
              SizedBox(
                height: 200,
                width: 100,
                child: Image.network(posterurl),
              ),
              Flexible(
                child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      description,style: const TextStyle(color: Colors.white),
                    )),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
