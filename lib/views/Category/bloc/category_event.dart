part of 'category_bloc.dart';
@immutable
abstract class CategoryEvent {}


class CategoryInitialFetchEvent extends CategoryEvent{}
class CategoryChildrenFetchEvent extends CategoryEvent{
  String? cat_id;

  CategoryChildrenFetchEvent(this.cat_id);
}

class CategoryChildrenFetchEventHandler extends CategoryEvent{

}

class CategoryChildThumbEvent extends CategoryEvent{
   List<ChildChild>? childchild;
   CategoryChildThumbEvent({this.childchild});
}

class NavToProductIndexEvent extends CategoryEvent{
  String? routId;
  NavToProductIndexEvent({this.routId});
}