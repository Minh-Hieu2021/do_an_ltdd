import 'package:flutter/material.dart';

class Categoryhome extends StatelessWidget {
  const Categoryhome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 125,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // background (button) color
                          onPrimary: Colors.black, // foreground (text) color
                        ),
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(Icons.laptop),
                            // SizedBox(width: 5),
                            Text("ASUS"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // background (button) color
                          onPrimary: Colors.black, // foreground (text) color
                        ),
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(Icons.laptop),
                            // SizedBox(width: 5),
                            Text("DELL"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // background (button) color
                          onPrimary: Colors.black, // foreground (text) color
                        ),
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(Icons.laptop),
                            // SizedBox(width: 5),
                            Text("ACER"),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // background (button) color
                          onPrimary: Colors.black, // foreground (text) color
                        ),
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(Icons.laptop),
                            Text("MSI  "),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // background (button) color
                          onPrimary: Colors.black, // foreground (text) color
                        ),
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(Icons.laptop),
                            Text("LENOVO   "),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // background (button) color
                          onPrimary: Colors.black, // foreground (text) color
                        ),
                        onPressed: () {},
                        child: Row(
                          children: const [
                            Icon(Icons.laptop),
                            Text("MACBOOK"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
            ),
    );
            
    
  }
}