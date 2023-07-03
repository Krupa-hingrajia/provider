import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/ui/provider_one.dart';
import 'package:provider_demo/ui/provider_two.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomePageState();
}

class _HomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<FirstNotifier>(context);
    final textData = Provider.of<FirstNotifier>(context);
    final counter1 = Provider.of<SecondNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Provider Demo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${counter.value.toDouble()}',
            ),
            Text(
              '${counter1.value.toDouble()}',
            ),
            Text(
              textData.test,
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                onChanged: (value) {
                  textData.textChange(value);
                },
                textAlign: TextAlign.center,
                showCursor: true,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () => counter.changeValue(counter.value.toDouble()),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () => counter1.changeValueTwo(counter1.value.toDouble()),
            tooltip: 'decrement',
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
