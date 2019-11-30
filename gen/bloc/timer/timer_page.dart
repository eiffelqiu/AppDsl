import 'package:flutter/material.dart';
import 'timer_state.dart';
import 'timer_event.dart';
import 'timer_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TimerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Timer')),
      body: BlocBuilder<TimerBloc, TimerState>(
        builder: (context, state) {
          return Center(
            child: Text(
              '${state.timer}',
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
	onPressed: () => BlocProvider.of<TimerBloc>(context)
	.add(TimerEvent.INC),
	),
	),
	Padding(
	padding: EdgeInsets.symmetric(vertical: 5.0),
	child: FloatingActionButton(
	child: Icon(Icons.add),
	onPressed: () => BlocProvider.of<TimerBloc>(context)
	.add(TimerEvent.DEC),
	),
	),
	],
	     ),
	   );
	 }
}	
