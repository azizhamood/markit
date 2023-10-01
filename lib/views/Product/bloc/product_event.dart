part of 'product_bloc.dart';

@immutable
abstract class ProductEvent {}

class GetListProductsEvent extends ProductEvent{
  String? routeId;
  GetListProductsEvent({this.routeId});
}