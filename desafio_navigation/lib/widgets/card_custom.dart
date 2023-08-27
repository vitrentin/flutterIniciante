import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  final String img, title, number, resume, navigator;
  const CardCustom({
    Key? key,
    required this.img,
    required this.title,
    required this.number,
    required this.resume,
    required this.navigator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Container(
        padding: const EdgeInsets.all(8),
        width: 400,
        height: 220,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: const Color(0xff172026),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(img),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xffEDF4F8),
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                const Text(
                  "Exercícios: ",
                  style: TextStyle(
                    color: Color(0xff51565A),
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.start,
                ),
                Text(
                  number,
                  style: const TextStyle(
                    color: Color(0xffEDF4F8),
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    resume,
                    style: const TextStyle(
                      color: Color(0xff51565A),
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Image.asset("assets/images/github.png"),
                const SizedBox(width: 4),
                const Expanded(
                  child: Text(
                    "Acessar código fonte",
                    style: TextStyle(
                      color: Color(0xffEDF4F8),
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(
                  width: 120,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16),
                      backgroundColor: const Color(0xff055AA3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed(navigator);
                    },
                    child: const Text("Ver mais"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
