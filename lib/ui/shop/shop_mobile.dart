import 'package:cupcake/data/shop/model/product.dart';
import 'package:cupcake/generated/l10n.dart';
import 'package:cupcake/ui/shop/shop_controller.dart';
import 'package:cupcake/ui/wave_shape.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShopMobile extends StatelessWidget {
  ShopController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    _controller.fetchProducts();
    return SingleChildScrollView(
      child: Column(
        children: [
          HomeUiFirstSection(),
          HomeUiSecondSection(),
          HomeUiThirdSection(),
          HomeUiFourthSection(),
          HomeUiFifthSection()
        ],
      ),
    );
  }
}

class HomeUiFirstSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Color(0xFFFBFAC9),
            child: CustomPaint(
              //Yo// u can Replace this with your desired WIDTH and HEIGHT
              painter: UpWaveCustomPainter1(Color(0xFFF7CFDA),
                  shortenBy: 0.2, amplitude: 0.05),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text(
                              "Miss cupcake",
                              style:
                                  TextStyle(fontFamily: "Wendy", fontSize: 60),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 20, top: 20, right: 20),
                            child: Text(
                              S.of(context).missCupcakeDescription,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 200,
                          margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                          child: RaisedButton(
                            elevation: 0,
                            padding: EdgeInsets.only(top: 20, bottom: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7)),
                            child: Text(
                              S.of(context).shopNow.toUpperCase(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Image.asset(
                        "assets/images/img_home_miss_cupcake.png",
                        height: 356,
                        width: 256,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class HomeUiSecondSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Color(0xFFEFFBE2),
            child: CustomPaint(
              //Yo// u can Replace this with your desired WIDTH and HEIGHT
              painter: UpWaveCustomPainter1(Color(0xFFFBFAC9),
                  shortenBy: 0.2, amplitude: 0.05),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 20, top: 80),
                            child: Text(
                              S.of(context).theSimpleLife,
                              style:
                                  TextStyle(fontFamily: "Wendy", fontSize: 60),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 20, top: 20, right: 20),
                            child: Text(
                              S.of(context).simpleSweetLifeDescription,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 200,
                          margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                          child: RaisedButton(
                            elevation: 0,
                            padding: EdgeInsets.only(top: 20, bottom: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7)),
                            child: Text(
                              S.of(context).whyMissCupcake.toUpperCase(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Image.asset(
                        "assets/images/img_home_sweet_life.png",
                        height: 356,
                        width: 256,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class HomeUiThirdSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Color(0xFFFDEFD1),
            child: CustomPaint(
              //Yo// u can Replace this with your desired WIDTH and HEIGHT
              painter: UpWaveCustomPainter1(Color(0xFFEFFBE2), amplitude: 0.02),
              child: Container(
                margin: EdgeInsets.only(bottom: 80),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 20, top: 80, right: 20, bottom: 80),
                            child: Text(
                              S.of(context).makeDaySweeter,
                              style:
                                  TextStyle(fontFamily: "Wendy", fontSize: 60),
                            ),
                          ),
                        )
                      ],
                    ),
                    GetX<ShopController>(
                      builder: (controller) {
                        print(controller.products.length);
                        return Wrap(
                            alignment: WrapAlignment.spaceEvenly,
                            children: List.generate(
                              controller.products.length,
                              (index) {
                                return ProductView(controller.products[index]);
                              },
                            ));
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class HomeUiFourthSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            color: Color(0xFF642C99),
            child: CustomPaint(
              //Yo// u can Replace this with your desired WIDTH and HEIGHT
              painter: UpWaveCustomPainter1(Color(0xFFFDEFD1),
                  shortenBy: 0.2, amplitude: 0.05),
              child: Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 20, top: 80),
                            child: Text(
                              S.of(context).onceUponATime,
                              style:
                                  TextStyle(fontFamily: "Wendy", fontSize: 60),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin:
                                EdgeInsets.only(left: 20, top: 20, right: 20),
                            child: Text(
                              S.of(context).onceUponATimeDescription,
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 200,
                          margin: EdgeInsets.only(left: 20, top: 20, right: 20),
                          child: RaisedButton(
                            elevation: 0,
                            padding: EdgeInsets.only(top: 20, bottom: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7)),
                            child: Text(
                              S.of(context).ourStory.toUpperCase(),
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Image.asset(
                        "assets/images/img_home_our_story.png",
                        height: 356,
                        width: 256,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class HomeUiFifthSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF642C99),
      padding: EdgeInsets.only(bottom: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Text(
              S.of(context).missCupcake,
              style: TextStyle(
                  color: Color(0xFFFDEFD1), fontSize: 32, fontFamily: "Wendy"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Text(
              S.of(context).sugerUpInbox,
              style: TextStyle(color: Color(0xFFFDEFD1), fontSize: 18),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFDEFD1), width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFDEFD1), width: 2.0),
                ),
                hintStyle: TextStyle(color: Color(0x80FDEFD1)),
                hintText: S.of(context).emailAddress,
              ),
              style: TextStyle(color: Color(0xFFFDEFD1)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: RaisedButton(
                      color: Color(0xFFFDEFD1),
                      padding: EdgeInsets.only(top: 20, bottom: 20),
                      child: Text(
                        S.of(context).send.toUpperCase(),
                        style:
                            TextStyle(color: Color(0xFF642C99), fontSize: 16),
                      ),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
          ),
          FooterButton(S.of(context).shop, () {}),
          FooterButton(S.of(context).ourStory, () {}),
          FooterButton(S.of(context).whyMissCupcake, () {}),
          FooterButton(S.of(context).cookiesPolicy, () {}),
          FooterButton(S.of(context).termsOfUse, () {}),
          FooterButton(S.of(context).copyright, null),
        ],
      ),
    );
  }
}

class ProductView extends StatefulWidget {
  Product _product;

  ProductView(this._product);

  @override
  State createState() {
    return ProductViewState();
  }
}

class ProductViewState extends State<ProductView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      margin: EdgeInsets.only(left: 40, right: 40),
      child: Column(
        children: [
          Image.network(
            widget._product.image,
            height: 210,
            width: 180,
          ),
          Container(
            margin: EdgeInsets.only(top: 40, bottom: 40),
            child: Text(
              widget._product.name,
              style: TextStyle(fontFamily: "Wendy", fontSize: 32),
            ),
          ),
          Container(
            child: Text(
              widget._product.description,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
            width: 200,
            margin: EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 80),
            child: RaisedButton(
              elevation: 0,
              padding: EdgeInsets.only(top: 20, bottom: 20),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7)),
              child: Text(
                S.of(context).addToCart.toUpperCase(),
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}

class FooterButton extends StatelessWidget {
  Function _onClick;
  String text;

  FooterButton(this.text, this._onClick);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Theme(
        data: Theme.of(context),
        child: Container(
          margin: EdgeInsets.only(left: 20, top: 20, right: 20),
          child: InkWell(
            splashColor: Color(0x80FDEFD1),
            child: Ink(
              child: Container(
                child: Text(
                  text,
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Color(0xFFFDEFD1), fontSize: 16),
                ),
              ),
            ),
            onTap: _onClick,
          ),
        ),
      ),
    );
  }
}
