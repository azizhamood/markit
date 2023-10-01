import 'dart:async';


import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../models/categoryTab.dart';
import '../model/categoryChild.dart';
import '../model/categoryChild.dart';
import '../model/categoryChild.dart';
import '../repository/categoryRepository.dart';
part 'category_state.dart';
part 'category_event.dart';


class CategoryBloc extends Bloc<CategoryEvent,CategoryState>{
  CategoryRepository categoryRepository= CategoryRepository();
  String cat_id="2";
  CategoryBloc():super(  CategoryStateInit())
  {
   
    on<CategoryInitialFetchEvent>(fetchData);

    on<CategoryChildrenFetchEvent>(getCategoryChildern);

    on<CategoryChildThumbEvent>(notFChildChild);

    on<NavToProductIndexEvent>(navToProductIndex);
  }

  @override
  Stream<CategoryState> mapEventToState( CategoryState event) async* {
    print("jkkkk");
    if(event is CategoryChildrenFetchEvent){
      cat_id= (event as CategoryChildrenFetchEvent).cat_id!;
      add(CategoryChildrenFetchEventHandler());

    }
  }

  FutureOr<List<CategoryTab>?> fetchData(CategoryInitialFetchEvent event, Emitter<CategoryState> emit) async{
    List<CategoryTab>? listCategoryTab= await categoryRepository.getCategoryTabs();
    emit(CategoryTabLoadingState(listTab: listCategoryTab));
  }



  FutureOr<void> getCategoryChildern(CategoryChildrenFetchEvent event, Emitter<CategoryState> emit)async {
    print(event.cat_id);
    CategoryChild lst= await categoryRepository.getCategoryChild(event.cat_id!);
    emit(CategoryChildrenLoadingState(categories: lst));
  }

  FutureOr<void> notFChildChild(CategoryChildThumbEvent event, Emitter<CategoryState> emit)async {
     emit(CategoryChildThumbState(childchild: event.childchild));
  }

  FutureOr<void> navToProductIndex(NavToProductIndexEvent event, Emitter<CategoryState> emit) {
    emit(NavToProductIndexState(routId: event.routId));
  }
}