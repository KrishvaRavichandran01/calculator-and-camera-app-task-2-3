import 'package:flutter/material.dart';
class Upload extends StatefulWidget {
  const Upload({super.key});

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  SizedBox si(){
    return SizedBox(
      width: 25,
    );
  }

  Row ass ({kkk,lll,ppp,mmm,ooo,iii}){
    return Row(children: [ si(),RawMaterialButton(onPressed: (){

    },
      fillColor: ooo,
      shape: CircleBorder(),constraints:BoxConstraints(
          minWidth: 70,minHeight: 90
      ),child: Text(kkk,style: TextStyle(fontSize: 35,fontWeight: FontWeight.w500),),),
      si(),RawMaterialButton(onPressed: (){

      },fillColor: ooo,shape: CircleBorder(),constraints:BoxConstraints(
          minWidth: 70,minHeight: 90
      ),child: Text(lll,style: TextStyle(fontSize: 35,fontWeight: FontWeight.w500),),),
      si(), RawMaterialButton(onPressed: (){

      },fillColor: ooo,shape: CircleBorder(),constraints:BoxConstraints(
          minWidth: 70,minHeight: 90
      ),child: Text(ppp,style: TextStyle(fontSize: 35,fontWeight: FontWeight.w500),),),
      si(),RawMaterialButton(onPressed: (){

      },fillColor: iii,shape: CircleBorder(),constraints:BoxConstraints(
          minWidth: 70,minHeight: 90
      ),child: Text(mmm,style: TextStyle(fontSize: 39,fontWeight: FontWeight.w500,color: Colors.white),),),]);}
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [SizedBox(height: 30,),
        Container(height: 50,child: ListTile(
          leading: CircleAvatar(radius: 40,
            child: Image.network(
              'https://zenprospect-production.s3.amazonaws.com/uploads/pictures/647f0890310c360001544e6a/picture',
            ),
          ),
          title: Text('RadicalStart',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),

        ),SizedBox(height: 30,),
        Container(
          decoration: BoxDecoration(color: Colors.white,
              borderRadius:BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
          ),

          height: 1000,
          child:  Column(
              children: [SizedBox(
                width: 20,height: 20,
              ),
                // button in container
                ass(kkk:'C',lll:'%',ppp:'⌫',mmm:'÷',ooo: Color(0xFFEEEEEE),iii: Color(0xFFFF9100)),
                ass(kkk:'7',lll:'8',ppp:'9',mmm:'×',ooo: Color(0xFFEDE7F6),iii: Color(0xFFFF9100)),
                ass(kkk:'4',lll:'5',ppp:'6',mmm:'-',ooo: Color(0xFFEDE7F6),iii: Color(0xFFFF9100)),
                ass(kkk:'1',lll:'2',ppp:'3',mmm:'+',ooo: Color(0xFFEDE7F6),iii: Color(0xFFFF9100)),
                ass(kkk:'.',lll:'0',ppp:'00',mmm:'=',ooo: Color(0xFFEDE7F6),iii: Color(0xFF651FFF)),
                SizedBox(height: 50,),
                Container(
                    height: 200,width: 380,
                    decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                        borderRadius: BorderRadius.circular(30)),
                    child: Column(
                      children: [ Row(mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                              height: 70,width: 70,child: Text('123',style: TextStyle(fontSize: 39,fontWeight: FontWeight.w500,),),
                              decoration: BoxDecoration(
                                  color: Color(0xFFEEEEEE),borderRadius: BorderRadius.circular(20)
                              )
                          ),
                        ],
                      ),Row(mainAxisAlignment: MainAxisAlignment.end,verticalDirection: VerticalDirection.up,
                        children: [
                          Container(
                              height: 50,width: 50,child: Text('255',style: TextStyle(fontSize: 29,fontWeight: FontWeight.w500,),),
                              decoration: BoxDecoration(
                                  color:Color(0xFFEEEEEE))),
                        ], ),
                      ],)),




              ]
          ),
        )

      ],
    );

  }
}
