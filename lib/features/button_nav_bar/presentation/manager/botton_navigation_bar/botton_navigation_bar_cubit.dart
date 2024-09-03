import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'botton_navigation_bar_state.dart';

class BottonNavigationBarCubit extends Cubit<BottonNavigationBarState> {
  BottonNavigationBarCubit() : super(BottonNavigationBarInitial());
}
