part of 'home_bloc.dart';
@immutable
abstract class HomeState{}

class HomeInitState extends HomeState{}
class HomeGoodState extends HomeState{
  List<Good>? goods;
  HomeGoodState({this.goods});

}