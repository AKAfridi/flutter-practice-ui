import 'package:flutter/material.dart';
import 'package:multi_role_app/screens/auth_ui/login/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String email = '', age = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    email = sp.getString('email') ?? '';
    age = sp.getString('age') ?? '';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFF006634),
        centerTitle: true,
      ),
      body:
      SingleChildScrollView(

        child: Column(
          children: [const Text(
            'Courses ',
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          Container(
            height: 200,
            decoration: const BoxDecoration(
              color: Color(0xFF99FBB8)
            ),
            child: ListView.builder(
                itemCount: 9,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: const Color(0xFF079153),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            'Container $index',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 19),
                          ),
                        ),
                      ),
                    )),
          ),


            ListView.builder(
                itemCount: 9,
                scrollDirection: Axis.vertical,
                primary: false,
                shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                            color: const Color(0xFF079153),
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            'Container $index',
                            style:
                                const TextStyle(color: Colors.white, fontSize: 19),
                          ),
                        ),
                      ),
                    )),
          ]
        ),
      ),
    );
  }
}
