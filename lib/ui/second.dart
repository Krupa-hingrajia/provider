import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/ui/provider_one.dart';

class Second extends StatefulWidget {
  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FirstNotifier>(
      builder: (context, repo, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text("demo"),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(repo.test.toString()),
              const SizedBox(
                height: 50.0,
              ),
              TextField(
                onChanged: (value) {
                  repo.textChange(value);
                },
              ),
            ],
          )),
        );
      },
    );
  }
}
