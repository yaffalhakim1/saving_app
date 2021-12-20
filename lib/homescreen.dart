import 'package:flutter/material.dart';
import 'package:saving_app/theme.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:saving_app/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget welcomeText() {
      return Padding(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
          top: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: mediumTextStyle.copyWith(
                      color: Color(0xff9F9F9F), fontSize: 13),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Yafi' + '👋',
                  style: semiboldTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            CircleAvatar(
              radius: 15,
              backgroundImage: NetworkImage(
                  'https://cdn.dribbble.com/users/1387431/screenshots/11081145/omen-valorant--logo.jpg'),
            )
          ],
        ),
      );
    }

    Widget cardBalance() {
      return Container(
        width: 315,
        height: 170,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/card_balance.png'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'My Savings',
              style: mediumTextStyle.copyWith(
                color: Colors.white,
                fontSize: 13,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Rp. 10.430.000',
              style: semiboldTextStyle.copyWith(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 46),
              child: LinearPercentIndicator(
                width: 222,
                lineHeight: 3.0,
                percent: 0.5,
                backgroundColor: Colors.white,
                progressColor: Color(0xff102693),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Rp. 10.430.000 / Rp. 40.000.000',
              style: mediumTextStyle.copyWith(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ],
        ),
      );
    }

    Widget buttons() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(
            image: 'assets/download.png',
            color: Color(0xff2C2C2C),
            width: 145,
            height: 60,
            text: 'Save Money',
            onPressed: () {},
          ),
          SizedBox(
            width: 10,
          ),
          CustomButton(
            image: 'assets/pay.png',
            color: Color(0xff2C2C2C),
            width: 145,
            height: 60,
            text: 'Pay',
            onPressed: () {},
          ),
        ],
      );
    }

    Widget history() {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          color: Colors.white,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Text('Transaction History',
                style: mediumTextStyle.copyWith(color: kBlackText)),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/success.png',
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Success!',
                        style: mediumTextStyle.copyWith(
                            fontSize: 13, color: kBlack),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'February 19, 03:25 PM',
                        style: mediumTextStyle.copyWith(
                            fontSize: 10, color: Color(0xffCBCBCB)),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    '+ 100.000',
                    style: semiboldTextStyle,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/success.png',
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Success!',
                        style: mediumTextStyle.copyWith(
                            fontSize: 13, color: kBlack),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'February 19, 03:25 PM',
                        style: mediumTextStyle.copyWith(
                            fontSize: 10, color: Color(0xffCBCBCB)),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    '+ 100.000',
                    style: semiboldTextStyle,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/success.png',
                    width: 24,
                    height: 24,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Success!',
                        style: mediumTextStyle.copyWith(
                            fontSize: 13, color: kBlack),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'February 19, 03:25 PM',
                        style: mediumTextStyle.copyWith(
                            fontSize: 10, color: Color(0xffCBCBCB)),
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(
                    '+ 100.000',
                    style: semiboldTextStyle,
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              welcomeText(),
              const SizedBox(
                height: 20,
              ),
              cardBalance(),
              const SizedBox(
                height: 30,
              ),
              buttons(),
              SizedBox(
                height: 10,
              ),
              history(),
            ],
          ),
        ),
      ),
    );
  }
}
