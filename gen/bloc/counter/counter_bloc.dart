import 'package:bloc/bloc.dart';
import 'counter_state.dart';
import 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  @override
  CounterState get initialState => CounterState(0);

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) 
  async* {
    switch (event) {			    	
	  case CounterEvent.INC:
	  yield CounterState(state.counter + 1);
	  break;				
	  case CounterEvent.DEC:
	  yield CounterState(state.counter - 1);
	  break;				
	}
  }
}
