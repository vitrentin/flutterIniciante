import 'package:flutter/material.dart';

class AnimationBarCustom extends StatelessWidget
    implements PreferredSizeWidget {
  const AnimationBarCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff121517),
      elevation: 0,
      leading: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          onPressed: () {
            Navigator.of(context).maybePop();
          },
          child: const Icon(Icons.arrow_back_ios_new)),
      title: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Animações",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            "Flutterando Masterclass",
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
      actions: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent,
          ),
          onPressed: () {},
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.nightlight_round_sharp),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
