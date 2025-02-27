import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 10, right: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              CircleAvatar(
                backgroundColor: Colors.red[900],
                child: Text(
                  "AI",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Icon(
                        Icons.settings_outlined,
                        color: Colors.black,
                        size: 14,
                      ),
                    ),
                  ))
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Good afternoon",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w400)),
                Text(
                  "AHMAD ISSA",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                )
              ],
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Stack(
            children: [
              Icon(
                Icons.email,
                size: 35,
                color: Colors.white,
              ),
              Positioned(
                  right: 0,
                  child: Icon(
                    Icons.notifications_active,
                    size: 12,
                    color: Colors.red[800],
                  ))
            ],
          )
        ],
      ),
    );
  }
}
