import 'package:bloc/bloc.dart';
import 'timer_state.dart';
import 'timer_event.dart';

class TimerBloc extends Bloc<TimerEvent, TimerState> {
  @override
  TimerState get initialState => TimerState(0);

  @override
  Stream<TimerState> mapEventToState(TimerEvent event) 
  async* {
    switch (event) {			    	
	  case TimerEvent.INC:
	  yield TimerState(state.counter + 1);
	  break;				
	  case TimerEvent.DEC:
	  yield TimerState(state.counter - 1);
	  break;				
	}
  }
}
