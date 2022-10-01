import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

enum ShimmerOrientation {
  Vertical,
  Horizontal,
  Center
}

class ShimmerLoading extends StatefulWidget {
  ShimmerOrientation orientation;
  int numLine;

  ShimmerLoading({Key? key, required this.orientation, required this.numLine})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ShimmerState();
  }
}

class ShimmerState extends State<ShimmerLoading> {
  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      highlightColor: Colors.white,
      baseColor: Colors.grey.shade300,
      child: _updateLoadingWithType(widget.orientation),
    );
  }

  Widget _updateLoadingWithType(ShimmerOrientation type) {
    return itemCenter1Line();
    switch(type){
      case ShimmerOrientation.Horizontal : {
        if(widget.numLine == 2){
          return itemHorizontal2Line();
        }else if(widget.numLine == 3) {
          return itemHorizontal3Line();
        }else {
          return itemHorizontal1Line();
        }
      }

      case ShimmerOrientation.Vertical: {
        if(widget.numLine == 2){
          return itemVertical2Line();
        }else if(widget.numLine == 3) {
          return itemVertical3Line();
        }else {
          return itemVertical1Line();
        }
      }

    }
  }

  Widget itemCenter1Line(){
    return Center(
      child: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.only(left: 10, top: 10, right: 10),
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
          ),

          Flexible(
            flex: 4,
            child: Container(
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(5))),
            ),
          ),
        ],
      ),
    );
  }

  Widget itemVertical1Line() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          flex: 2,
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
        ),
        Flexible(
            flex: 4,
            child: Column(
              children: [
                Flexible(flex: 1,child: Container(
                  margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),),
                Flexible(flex: 1,child: Container(
                  margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),),
                Flexible(flex: 1,child: Container(
                  margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),),
              ],
            )),
      ],
    );
  }
  Widget itemVertical2Line() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          flex: 2,
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
        ),
        Flexible(
            flex: 4,
            child: Column(
              children: [
                Flexible(flex: 1,child: Container(
                  margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),),
                Flexible(flex: 1,child: Container(
                  margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),),
                Flexible(flex: 1,child: Container(
                  margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),),
              ],
            )),
      ],
    );
  }
  Widget itemVertical3Line() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          flex: 2,
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
        ),
        Flexible(
            flex: 4,
            child: Column(
              children: [
                Flexible(flex: 1,child: Container(
                  margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),),
                Flexible(flex: 1,child: Container(
                  margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),),
                Flexible(flex: 1,child: Container(
                  margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),),
              ],
            )),
      ],
    );
  }

  Widget itemHorizontal1Line() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          flex: 2,
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
        ),
        Flexible(
            flex: 4,
            child: Column(
              children: [
                Flexible(flex: 1,child: Container(
                  margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),),
                Flexible(flex: 1,child: Container(
                  margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),),
                Flexible(flex: 1,child: Container(
                  margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),),
              ],
            )),
      ],
    );
  }
  Widget itemHorizontal2Line() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          flex: 2,
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
        ),
        Flexible(
            flex: 4,
            child: Column(
              children: [
                Flexible(flex: 1,child: Container(
                  margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),),
                Flexible(flex: 1,child: Container(
                  margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),),
                Flexible(flex: 1,child: Container(
                  margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),),
              ],
            )),
      ],
    );
  }
  Widget itemHorizontal3Line() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Flexible(
          flex: 2,
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(5))),
          ),
        ),
        Flexible(
            flex: 4,
            child: Column(
              children: [
                Flexible(flex: 1,child: Container(
                  margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),),
                Flexible(flex: 1,child: Container(
                  margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),),
                Flexible(flex: 1,child: Container(
                  margin: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),),
              ],
            )),
      ],
    );
  }
}

/*Column(
children: [
Container(
height: double.negativeInfinity,
width: double.infinity,
margin: const EdgeInsets.all(10),
decoration: const BoxDecoration(
color: Colors.grey,
borderRadius: BorderRadius.all(Radius.circular(10))),
child: ClipRRect(
borderRadius: const BorderRadius.all(Radius.circular(10)),
child: Container(
color: Colors.grey,
),
),
),
const SizedBox(height: 8),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Container(
height: 8,
width: 8,
decoration: const BoxDecoration(
shape: BoxShape.circle, color: Colors.grey),
),
const SizedBox(width: 2),
Container(
height: 8,
width: 8,
decoration: const BoxDecoration(
shape: BoxShape.circle, color: Colors.grey),
),
const SizedBox(width: 2),
Container(
height: 8,
width: 8,
decoration: const BoxDecoration(
shape: BoxShape.circle, color: Colors.grey),
),
const SizedBox(width: 2),
Container(
height: 8,
width: 8,
decoration: const BoxDecoration(
shape: BoxShape.circle, color: Colors.grey),
),
const SizedBox(width: 2),
Container(
height: 8,
width: 8,
decoration: const BoxDecoration(
shape: BoxShape.circle, color: Colors.grey),
)
],
)
],
)*/
