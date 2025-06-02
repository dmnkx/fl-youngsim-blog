import 'package:fl_youngsim_blog/screens/dimensions.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    final contentHeight =
        MediaQuery.of(context).size.height - titleHeight - menuHeight;
    return Container(
      width: double.infinity,
      height: contentHeight,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: SizedBox(
                width: 500,
                child: Image.asset('assets/images/003.jpeg', fit: BoxFit.cover),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                width: 800,
                height: contentHeight,
                color: Colors.grey[300],
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('중성화', style: TextStyle(fontSize: 40)),
                      Text('아픈 기억', style: TextStyle(fontSize: 40)),
                      Text('집사의 저 표정', style: TextStyle(fontSize: 40)),
                      Text('당황스럽다', style: TextStyle(fontSize: 40)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
