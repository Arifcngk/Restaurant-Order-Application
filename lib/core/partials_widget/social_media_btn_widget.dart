import 'package:flutter/material.dart';

class SocialBtnWidget extends StatelessWidget {
  const SocialBtnWidget({
    super.key,
    required this.text,
    this.fontSize = 18,
    required this.image,
  });
  final String text;
  final double fontSize;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      width: double.infinity,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 20.0), // Yatay boşlukları küçültme
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40, // İkonun yüksekliği
              width: 40, // İkonun genişliği
              child: Image.asset(
                image, // Resim yolunu direkt kullanma
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 10), // İkon ve yazı arasına boşluk
            Expanded(
              child: Text(
                text,
                style: TextStyle(
                  fontSize: fontSize, // Yazının boyutu
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center, // Yazının ortalanmasını sağlar
              ),
            ),
          ],
        ),
      ),
    );
  }
}
