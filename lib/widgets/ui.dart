import 'package:flutter/material.dart';

class Ui extends StatelessWidget {
  const Ui({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text(
          'gregorius.v',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: h * 0.25,
              // color: Colors.red,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: h * 0.2,
                    // color: Colors.purple,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/entin.jpg'),
                          radius: 60,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'gregorius.v',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Mahasiswa/KapuasHulu',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(child: Container(
                    // color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: w * 0.07,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              profilDetails('150', 'Posts'),
                              SizedBox(
                                width: w * 0.03,
                              ),
                              profilDetails('100', 'Followers'),
                              SizedBox(
                                width: w * 0.03,
                              ),
                              profilDetails('100', 'Following'),
                              SizedBox(
                                width: w * 0.03,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: h * 0.010,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: h * 0.05,
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.blue)
                                    ),
                                    onPressed: () {}, 
                                    child: Text(
                                      'Follow',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )
                                ),
                              ),
                              SizedBox(
                                width: w * 0.025,
                              ),
                              Container(
                                height: h * 0.05,
                                width: w * 0.12,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.blue, width: 2),
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(Icons.arrow_downward),
                              ),
                              SizedBox(
                                width: w * 0.03,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
                ],
              ),
            ),
            Container(
              height: h * 0.13,
              // color: Colors.blue,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(5),
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.orange
                        ),
                      ),
                      Text('Title'),
                    ],
                  );
                },
              ),
            ),
            Container(
              height: h * 0.11,
              color: Colors.green,
            ),
            Expanded(
              child: Container(color: Colors.yellow,)
            ),
          ],
        ),
      ),
    );
  }

  Widget profilDetails(String text1, text2){
    return Column(
      children: [
        Text(
          text1,
          style: TextStyle(
            fontSize: 24
          ),
        ),
        Text(
          text2,
          style: TextStyle(
            fontSize: 14
          ),
        ),
      ],
    );
  }
}