// Suggested code may be subject to a license. Learn more: ~LicenseLog:2353062240.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3971277761.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3490927969.
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green.shade600,
            title: const Text('What' 's up'),
            bottom: const TabBar(
              automaticIndicatorColorAdjustment: true,
              
              tabs: [
              Tab(
                icon: Icon(Icons.chat),
                text: 'Chats',
              ),
              Tab(
                icon: Icon(Icons.group),
                text: 'Groups',
              ),
              Tab(
                icon: Icon(Icons.call),
                text: 'Calls',
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'Settings',
              ),
            ]),
          ),
          body: TabBarView(children: [
            Container(
              child: Center(child: AnimatedTextKit(animatedTexts: [
                 TypewriterAnimatedText(
                     'Chats',
                     textStyle: const TextStyle(
                         fontSize: 32.0, fontWeight: FontWeight.bold),
                     speed: const Duration(milliseconds: 200),
                   )
              ],
              repeatForever: true,
              )),
            ),
            Container(
              child: Center(child: AnimatedTextKit(animatedTexts: [
                 TyperAnimatedText(
                     'Groups',
                     textStyle: const TextStyle(
                         fontSize: 32.0, fontWeight: FontWeight.bold),
                     speed: const Duration(milliseconds: 200),
                   )
              ],
              repeatForever: true,
              )),
            ),
            Container(
              child: Center(child: AnimatedTextKit(animatedTexts: [
                 WavyAnimatedText(
                     'Calls',
                     textStyle: const TextStyle(
                         fontSize: 32.0, fontWeight: FontWeight.bold),
                     speed: const Duration(milliseconds: 200),
                   )
              ],
              repeatForever: true,
              )),
            ),
            Container(
             child: Center(child: AnimatedTextKit(animatedTexts: [
                 ScaleAnimatedText(
                     'Settings',
                     textStyle: const TextStyle(
                         fontSize: 32.0, fontWeight: FontWeight.bold),
                     duration: const Duration(seconds: 1)
                   )
              ],
              repeatForever: true,)),
            )
          ]),
        ));
  }
}
