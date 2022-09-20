import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'odc_state.dart';

class OdcCubit extends Cubit<String> {
  OdcCubit() : super('');

  void increment(value) => emit(value = state);
}
