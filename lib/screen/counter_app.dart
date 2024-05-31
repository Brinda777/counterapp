import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appbarProvider = Provider<String>((ref) {
  return 'Counter app';
});

// ignore: prefer_function_declarations_over_variables
final counterProvider = StateProvider<int>((ref) {
  //jun provider ko value change garne ho teslai state provider vanincha
  return 0;
});

class CounterView extends ConsumerWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ref.read(appbarProvider)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(ref.watch(counterProvider).toString())

            // Text(
            //   'Counter',
            //   style: TextStyle(fontSize: 24),
            // ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
