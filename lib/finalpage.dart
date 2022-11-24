import 'package:flutter/material.dart';

class Final extends StatefulWidget {
  const Final({Key? key}) : super(key: key);

  @override
  State<Final> createState() => _FinalState();
}

class _FinalState extends State<Final> {
  @override
  Widget build(BuildContext context) {
    dynamic list = ModalRoute.of(context)!.settings.arguments;
    return SafeArea(
      child: Scaffold(

        body: Column(
          children: [
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.indigo.shade500,
              child: Text("${list[0]}"),
            ),
          ],
        ),
      ),
    );
  }
}
