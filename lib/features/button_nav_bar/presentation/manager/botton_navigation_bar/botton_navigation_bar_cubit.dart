import 'package:bloc/bloc.dart';
class BottonNavigationBarCubit extends Cubit<int> {
  BottonNavigationBarCubit() : super(0);
  void updateIndex(int index) {
    emit(index);
  }
}
