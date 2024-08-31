import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top:200.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      'assets/images/group_32.svg',
                      height: 90.0,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30),
                    child: Text(
                      'Dooit',
                      style: TextStyle(
                          fontFamily: 'Graphik',
                          fontWeight: FontWeight.w900,
                          fontSize: 48.0,
                          color: Colors.white),
                    ),
                  ),
                  const Padding(
                  padding: EdgeInsets.only(top: 20),
                      child: Text(
                    "Write what you need \nto do. Everyday", textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Graphik', fontSize: 19,color: Colors.white),
                  ))
                ],
              ),
            ),
            Padding(padding: const EdgeInsets.only(top: 150),
                child: ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, '/continue');
                }, style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 80.0, vertical: 20.0)
                ),child: const Text('Continue', style: TextStyle(fontSize: 20, color: Colors.black, fontFamily: 'Graphik'),),),
            )
          ],
        ),
      ),
    );
  }
}
