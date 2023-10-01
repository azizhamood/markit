
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markit/views/Product/bloc/product_bloc.dart';
import 'package:markit/models/goods.dart';

class ProductIndex extends StatefulWidget {
     String? routeId;
    ProductIndex({Key? key,this.routeId}) : super(key: key);

  @override
  State<ProductIndex> createState() => _ProductIndexState();
}

class _ProductIndexState extends State<ProductIndex> {
  ProductBloc productBloc =ProductBloc();
  @override
  void initState() {
    productBloc.add(GetListProductsEvent(routeId: widget.routeId));

  }

  @override
  Widget build(BuildContext context) {

    return BlocProvider<ProductBloc>(
        create: (context)=>productBloc,
        child: BlocBuilder<ProductBloc,ProductState>(
          bloc: productBloc,
          builder: (context,state){
            switch(state.runtimeType){
              case ProducListState :{
                ProducListState producListState= state as ProducListState;
                List<Good>? goods=producListState.productList!.goods;
                return GridView.builder(
                  itemCount: goods!.length,
                  padding: const EdgeInsets.all(10),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    mainAxisExtent: 360,
                    maxCrossAxisExtent: 200,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (_, int index) => ItemWidget(goods[index]),
                );

               }
              default:{

                return Center(child: CircularProgressIndicator(color: Colors.purpleAccent,),);
              }

            }

          },
        )
    );
  }
}



class ItemWidget extends StatelessWidget {
  final Good item;

  const ItemWidget(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  'http:'+item.goodsImg!,
                  height: 300,
                  fit: BoxFit.contain,


                ),
              ),
              Positioned(
                left: 5,
                bottom: 5,
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.black.withOpacity(0.3),
                  child:
                       _favoriteIcon(Icons.favorite),
                ),
              )
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text(
          item.goodsName!,
          style: const TextStyle(overflow: TextOverflow.ellipsis),
          maxLines: 2,
        ),
        Row(
          children: [
            Expanded(child: Text('{item.price} {item.currency}')),
            const SizedBox(width: 10),
            // for (final color in item.colors)
            //   Padding(
            //     padding: const EdgeInsets.only(left: 5.0),
            //     child: CircleAvatar(radius: 6, backgroundColor: color),
            //   )
          ],
        )
      ],
    );
  }

  Widget _favoriteIcon(IconData icon) =>
      Icon(icon, size: 12, color: Colors.white);
}

