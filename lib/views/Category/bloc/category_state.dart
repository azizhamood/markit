part of 'category_bloc.dart';

@immutable
class CategoryState {}

class CategoryStateInit extends CategoryState{

}
class CategoryTabLoadingState extends CategoryState {
  List<CategoryTab>? listTab;

  CategoryTabLoadingState({this.listTab});
}
class CategoryChildrenLoadingState extends CategoryState {
  final CategoryChild  categories ;
  CategoryChildrenLoadingState({
    required this.categories
  });

}

class CategoryChildThumbState extends CategoryState {
  final List<ChildChild>?  childchild ;
  final List<CategoryThumb> categoryThumbs=<CategoryThumb>[];
  CategoryChildThumbState({this.childchild}){
    childchild?.forEach((element) {
      if(element.name==null){
        element.thumb?.forEach((thumb) {
          categoryThumbs.add(thumb);
        });
      }
    });
  }

}

class NavToProductIndexState extends CategoryState{
  String? routId ;
  NavToProductIndexState({this.routId});
}