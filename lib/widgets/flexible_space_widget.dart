import 'package:flutter/material.dart';

class FlexibleSpaceBackground extends StatefulWidget {
  const FlexibleSpaceBackground({
    Key? key,
  }) : super(key: key);

  @override
  State<FlexibleSpaceBackground> createState() =>
      _FlexibleSpaceBackgroundState();
}

class _FlexibleSpaceBackgroundState extends State<FlexibleSpaceBackground> {
  var userNameText = RichText(
    text: TextSpan(
      style: const TextStyle(
        fontSize: 14.0,
        color: Colors.black,
      ),
      children: <TextSpan>[
        TextSpan(
          text: 'Hello ',
          style: const TextStyle(fontSize: 20),
        ),
        TextSpan(
          text: 'Hutto!',
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 90,
        left: 15,
        right: 10,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                userNameText,
                Text(
                  'Good Morning!',
                  style: TextStyle(fontSize: 24),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Container(
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(right: 8),
                            child: Icon(
                              Icons.wb_sunny,
                              size: 47,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            '90 °C',
                            style: TextStyle(fontSize: 24),
                          ),
                          Text(
                            'Sunny',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
