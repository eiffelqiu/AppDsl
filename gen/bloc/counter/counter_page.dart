import 'package:flutter/material.dart';
import 'counter_state.dart';
import 'counter_event.dart';
import 'counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter')),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return Center(
            child: Text(
              '${state.counter}',
              style: TextStyle(fontSize: 24.0),
            ),
          );
        },
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
	Padding(
	padding: EdgeInsets.symmetric(vertical: 5.0),
	child: FloatingActionButton(
	child: Icon(Icons.add),
	onPressed: () => BlocProvider.of<CounterBloc>(context)
	.add(CounterEvent.INC),
	),
	),
	Padding(
	padding: EdgeInsets.symmetric(vertical: 5.0),
	child: FloatingActionButton(
	child: Icon(Icons.add),
	onPressed: () => BlocProvider.of<CounterBloc>(context)
	.add(CounterEvent.DEC),
	),
	),
	],
	     ),
	   );
	 }
}	
