import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:markit/models/Product_details/product_detail_model.dart';
import 'package:meta/meta.dart';
import '../model/product_list.dart';
import '../repository/product_repository.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent,ProductState>{
  ProductRepository productRepository= ProductRepository();
  ProductBloc():super(ProductInitState()){
      on<GetListProductsEvent>(getListProduct);
  }

  FutureOr<void> getListProduct(GetListProductsEvent event, Emitter<ProductState> emit) async{

    ProductList productlist=await productRepository.getProductList(event.routeId!);
    ProductDetail? productDetail= await productRepository.getProductDetail("id");
    print((productDetail?.detail!.goodsName)!);
    emit(ProducListState(productList: productlist));
  }
}