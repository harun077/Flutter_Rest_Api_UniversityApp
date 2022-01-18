import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePages extends StatelessWidget {
  
  TextEditingController searchTextController = TextEditingController();

  HomePages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('University Finder'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/svgs/logo.svg",
                width: 200.0,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: searchTextController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      hintText: "Enter University Name"),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print(searchTextController.text);
                },
                child: Text("Search "),
              ),
            ],
          ),
        ));
  }
}
