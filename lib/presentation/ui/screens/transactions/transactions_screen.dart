import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kinoplusmobile/core/constants/app_images.dart';
import 'package:kinoplusmobile/navigator/navigator.dart';
import 'package:kinoplusmobile/presentation/ui/screens/transactions/transactions_placeholder_screen.dart';

import '../../../../core/constants/app_color.dart';
import '../../../../core/constants/app_style.dart';

class TransactionsScreen extends StatefulWidget {
  const TransactionsScreen({super.key});

  @override
  State<TransactionsScreen> createState() => _TransactionsScreenState();
}

class _TransactionsScreenState extends State<TransactionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.Black,
      appBar: AppBar(
        titleSpacing: 0,
        elevation: 0,
        backgroundColor: AppColor.Black,
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            "Tranzaksiyalar tarixi",
            style: AppStyle.dayOne14White,
          ),
        ),
        leading: IconButton(
          icon: Icon(CupertinoIcons.back, size: 30, color: AppColor.White),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
          itemBuilder: (context, index) {
        return transactionItem(context,index);
      }),
    );
  }
}

Widget transactionItem(BuildContext context,int index) {
  return InkWell(
    borderRadius: BorderRadius.circular(14),
    onTap: (){
      openScreen(context, PlaceholderTransactionsScreen());
    },
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 18,vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Color(0xAFFFFFF),
      ),
      child: Column(
        children: [
          index%2==0?Row(
            children: [
              SvgPicture.asset(AppImages.paymeicon,width: 72,height: 24,),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff296309),
                ),
                padding: EdgeInsets.symmetric(vertical: 3,horizontal: 10),
                child: Text("Muvaffaqiyatli",style: AppStyle.rubik12White,),
              )]
            ,
          ):Row(
            children: [
              Image.asset(AppImages.uzumbankicon, width:70,height:30,),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xff630909),
                ),
                padding: EdgeInsets.symmetric(vertical: 3,horizontal: 10),
                child: Text("Bekor qilindi",style: AppStyle.rubik12White,),
              )]
            ,
          ),
          SizedBox(height: 18,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("To’lov turi",style: AppStyle.rubik11Gray1,),
                  SizedBox(height: 4,),
                  Text("Obuna uchun",style: AppStyle.rubik13White,)
                ],
              )),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("To’lov vaqti",style: AppStyle.rubik11Gray1,),
                  SizedBox(height: 4,),
                  Text("10 Avg, 00:23",style: AppStyle.rubik13White,)
                ],
              )),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("To’lov summasi",style: AppStyle.rubik11Gray1,),
                  SizedBox(height: 4,),
                  Text("100 000 uzs",style: AppStyle.rubik13White,)

                ],
              ))
            ],
          )
        ],
      ),
    ),
  );

}
