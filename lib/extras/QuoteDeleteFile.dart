import 'package:flutter/material.dart';
import 'package:flutterr/ui/CardFile.dart';
import '../model/Quote.dart';

class QuoteDelete extends StatefulWidget {
  QuoteDelete({Key? key}) : super(key: key);

  @override
  State<QuoteDelete> createState() => _QuoteDeleteState();
}

class _QuoteDeleteState extends State<QuoteDelete> {
  final List<Quote> list = [
    Quote(author: "Shivam Kamboj", name: "App imp"),
    Quote(author: "Developer.com", name: "Flutter "),
    Quote(author: "Ninja", name: "Technique")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List1 view"),
        centerTitle: false,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: /* Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: list
                  .map((quote) => CardFile(quote: quote, delete: delete(quote)))
                  .toList(),
            )*/

            listView(),
      ),
    );
  }

  Widget listView() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (context, index) => CardFile(
              quote: list[index],
              /*delete: (){
          list.remove(list[index]);
          setState(() {

          });

        }*/
              delete: delete(list[index]),
            ));
  }

  VoidCallback delete(Quote quote) {
    return () => setState(() {
          list.remove(quote);
        });
  }
}
