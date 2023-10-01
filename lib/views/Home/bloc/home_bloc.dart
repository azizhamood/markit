import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:markit/views/Home/repository/home_repository.dart';
import 'package:meta/meta.dart';

import '../../../models/goods.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{
  HomeRepository homeRepository= HomeRepository();
  HomeBloc():super(HomeInitState()){
     on<HomeEventInit>(getInitData);
  }

  FutureOr<void> getInitData(HomeEventInit event, Emitter<HomeState> emit) async{
     List<Good>? list= await homeRepository.getGoods();
     emit(HomeGoodState(goods: list));
  }
}