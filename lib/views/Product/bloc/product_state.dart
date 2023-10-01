part of 'product_bloc.dart';
@immutable
abstract class ProductState{}

class ProductInitState extends ProductState{}

class ProducListState extends ProductState{
  ProductList? productList;
  ProducListState({this.productList});
}