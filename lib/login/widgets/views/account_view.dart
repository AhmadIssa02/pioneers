import 'package:flutter/material.dart';
import 'package:new_app/login/widgets/balance_card.dart';
import 'package:new_app/login/widgets/rewards.dart';
import 'package:new_app/login/widgets/services.dart';
import 'package:new_app/login/screens/soon_screen.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 15),
        child: Column(
          children: [
            SizedBox(
              width: 550,
              height: 230,
              child: BalanceCard(),
            ),
            const SizedBox(
              height: 15,
            ),
            const Services(),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 550,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shadowColor: Colors.grey,
                    backgroundColor: Colors.blue[300],
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SoonScreen(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Transform.rotate(
                        angle: -0.7,
                        child: const Icon(
                          Icons.pie_chart_outline,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                        height: 40,
                      ),
                      const Text(
                        "My Portfolio",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Rewards(),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
