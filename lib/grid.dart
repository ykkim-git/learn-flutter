import 'package:flutter/material.dart';

Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                'Oeschinen Lake Campground',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      Text('41'),
    ],
  ),
);

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            // 요소 1개만 가짐
            padding: EdgeInsets.all(30),
            child: Column(
              // child를 Column 배치
              children: [
                Text('hello cat',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headline1),
                Image.asset('images/bom.png',
                    fit: BoxFit.cover, width: 300, height: 300),
                Icon(Icons.star, color: Colors.orange),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('ROW TEXT 0',
                        style: Theme.of(context).textTheme.bodyText1),
                    Text('ROW TEXT 1',
                        style: Theme.of(context).textTheme.bodyText1),
                    Text('ROW TEXT 2',
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Column TEXT 0',
                        style: Theme.of(context).textTheme.bodyText1),
                    Text('Column TEXT 1',
                        style: Theme.of(context).textTheme.bodyText1),
                    Text('Column TEXT 2',
                        style: Theme.of(context).textTheme.bodyText1),
                    TextFormField(
                        validator: (String value) {
                          return (value != null && value.contains('@'))
                              ? 'Do not use the @ char.'
                              : null;
                        },
                        // initialValue: 'init value',
                        // const를 통해 rebuild 되지않게 막기.
                        decoration: const InputDecoration(
                          icon: Icon(Icons.person_outline),
                          hintText: 'this is a hintText',
                          // errorText: 'this is an errorText',
                          border: OutlineInputBorder(),
                        )),
                    titleSection, // title 위젯
                  ],
                ),
              ],
            )));
  }
}
