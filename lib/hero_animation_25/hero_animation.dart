import 'package:flutter/material.dart';

class HeroAnimationMain25 extends StatelessWidget {
  const HeroAnimationMain25({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Latihan Hero Animation',
            style: TextStyle(color: Colors.white),
          )),
      body: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const HeroAnimationSecond25();
          }));
        },
        child: Hero(
          tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: const SizedBox(
                width: 100,
                height: 100,
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://1fid.com/wp-content/uploads/2022/07/boy-anime-wallpaper-image-for-profile-pic-81.jpg"),
                )),
          ),
        ),
      ),
    );
  }
}

class HeroAnimationSecond25 extends StatelessWidget {
  const HeroAnimationSecond25({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text(
            'Latihan Hero Animation',
            style: TextStyle(color: Colors.white),
          )),
      body: Center(
        child: Hero(
          tag: 'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: const SizedBox(
                width: 100,
                height: 100,
                child: Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://1fid.com/wp-content/uploads/2022/07/boy-anime-wallpaper-image-for-profile-pic-81.jpg"),
                )),
          ),
        ),
      ),
    );
  }
}
