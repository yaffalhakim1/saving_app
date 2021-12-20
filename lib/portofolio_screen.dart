import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:saving_app/theme.dart';

class PortofolioScreen extends StatelessWidget {
  const PortofolioScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget cardPorto() {
      return Container(
        width: 380,
        height: 190,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/card_porto.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 35),
            Text(
              'My Portofolio',
              style:
                  semiboldTextStyle.copyWith(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(height: 35),
            Text(
              'Savings Value',
              style: mediumTextStyle.copyWith(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 13),
            ),
            const SizedBox(height: 12),
            Text(
              'Rp. 12.480.000',
              style:
                  semiboldTextStyle.copyWith(fontSize: 24, color: Colors.white),
            )
          ],
        ),
      );
    }

    Widget cardSatu() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        padding: EdgeInsets.only(left: 15, right: 20, top: 20, bottom: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/savings.png',
              width: 55,
              height: 55,
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'pension savings funds',
                  style: semiboldTextStyle.copyWith(
                    color: Color(0xff525252),
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 12),
                LinearPercentIndicator(
                  padding: EdgeInsets.symmetric(horizontal: 0),
                  animation: true,
                  width: 180,
                  lineHeight: 3.0,
                  percent: 0.5,
                  backgroundColor: Color(0xff888888),
                  progressColor: Color(0xff3366FF),
                ),
                const SizedBox(height: 12),
                Text(
                  'Rp. 10.430.000 / Rp. 40.000.000',
                  style: mediumTextStyle.copyWith(
                    color: Color(0xff888888),
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  'Last saving February 19, 2020',
                  style: mediumTextStyle.copyWith(
                      color: Color(0xff888888), fontSize: 10),
                  textAlign: TextAlign.right,
                ),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              cardPorto(),
              const SizedBox(height: 20),
              cardSatu(),
              const SizedBox(height: 20),
              cardSatu(),
              const SizedBox(height: 20),
              cardSatu(),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
