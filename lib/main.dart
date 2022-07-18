import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _getappbar(),
        body: SafeArea(
          child: _getMainBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _getappbar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.red,
      title: Text('Reza Mahdinezhad'),
    );
  }

  Widget _getMainBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
          ),
          _getHeader(),
        ],
      ),
    );
  }

  Widget _getHeader() {
    return Column(
      children: [
        SizedBox(height: 20),
        CircleAvatar(
          radius: 80,
          backgroundImage: AssetImage('images/cv.png'),
        ),
        SizedBox(height: 20),
        Text(
          'Flutter Developer',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20.0),
        _getIcon(),
        SizedBox(height: 20.0),
        _getSkilllabel(),
        SizedBox(height: 20.0),
        _getResume()
      ],
    );
  }

  Widget _getIcon() {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.linkedin)),
        IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.telegram)),
        IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.github)),
        IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.whatsapp)),
      ],
    );
  }

  Widget _getSkilllabel() {
    var skillabel = ['Android', 'Flutter', 'Dart', 'Java', 'Kotlin'];

    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        for (var skill in skillabel)
          Card(
            child: Column(
              children: [
                Image(
                  image: AssetImage('images/$skill.png'),
                  width: 68.0,
                ),
                Padding(padding: EdgeInsets.all(5), child: Text('$skill'))
              ],
            ),
          ),
      ],
    );
  }

  Widget _getResume() {
    var skills = ['Android Programming', 'Design Patterns', 'OOP', 'GIT'];
    return Container(
      color: Colors.grey[300],
      width: double.infinity,
      child: Column(
        children: [for (var skills in skills) Text(skills)],
      ),
    );
  }

  //void _openTelegram() async {
  //var url = 'https://telegram.me/rezamahdinezhad';
  //await launch(url);
  // }

  // void _openWhatsapp() async {
  //   var url = 'https://wa.me/+989197927782';
  //   await launch(url);
  // }
}
