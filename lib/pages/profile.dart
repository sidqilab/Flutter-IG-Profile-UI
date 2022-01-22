import 'package:flutter/material.dart';
import 'package:instagram_ui/widgets/info_item.dart';
import 'package:instagram_ui/widgets/profile_picture.dart';
import 'package:instagram_ui/widgets/story_item.dart';
import 'package:instagram_ui/widgets/tab_item.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Row(
          children: [
            Text(
              'fajarsidqi8',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 3,
            ),
            Icon(
              Icons.verified,
              color: Colors.blue,
              size: 18,
            ),
            Icon(Icons.arrow_drop_down, color: Colors.black),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu, color: Colors.black),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem('Posts', '2022'),
                      InfoItem('Followers', '8.8M'),
                      InfoItem('Following', '5'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Text(
              'Fajar Sidqi',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: RichText(
              text: TextSpan(
                text: 'Bukan Public Figure ',
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: '#ceunah',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Text(
              'github.com/sidqilab',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                'Edit Profile',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem('Vocation'),
                  StoryItem('Vocation2'),
                  StoryItem('Vocation3'),
                  StoryItem('Vocation4'),
                  StoryItem('Vocation5'),
                  StoryItem('Vocation6'),
                  StoryItem('Vocation7'),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              TabItem(Icons.grid_on_outlined, true),
              TabItem(Icons.person_pin_outlined, false),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
          itemCount: 200,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 3,
            mainAxisSpacing: 3,
          ),
          itemBuilder: (context, index) => Image.network('https://picsum.photos/seed/picsum/536/354',
          fit: BoxFit.cover,
          ),
          ),
        ],
      ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: 4,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
      BottomNavigationBarItem(icon: Icon(Icons.home,),
      label: 'Home',
      ),
      BottomNavigationBarItem(icon: Icon(Icons.search),
      label: 'Search',
      ),
      BottomNavigationBarItem(icon: Icon(Icons.movie_filter_rounded,),
      label: 'movie',
      ),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_basket_rounded),
      label: 'shop',
      ),
      BottomNavigationBarItem(icon: Icon(Icons.person_outline_outlined),
      label: 'profile',
      ),
    ],),
    );
  }
}


