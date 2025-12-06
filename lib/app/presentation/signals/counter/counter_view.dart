import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';

 
 
class CounterView extends StatelessWidget {
   CounterView({super.key});
  

  @override
  Widget build(BuildContext context) {
    final counter = signal(0, autoDispose: true);
    return Scaffold(
      appBar: AppBar(title: Text('Counter with Signals')),
      body: Center(
        child: Column(
          spacing: 20,
          children: [
            SizedBox(height: 100,),
            Watch((context) {
              // This rebuilds when counter changes
              return Text(
                'Count: ${counter.value}',
                style: TextStyle(fontSize: 32),
              );
            }),
            ElevatedButton(
              onPressed: () => counter.value++,
              child: Text('Increment', style: TextStyle(fontSize: 18,),),
            )
          ],
        ),
      ),
    );
  }
}
