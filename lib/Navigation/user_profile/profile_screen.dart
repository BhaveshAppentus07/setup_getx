import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/utils/app_them/app_colors.dart';
import 'package:getx_demo/utils/style/style.dart';
import 'package:getx_demo/utils/urls.dart';
import 'package:toggle_switch/toggle_switch.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {


List story =[
  {'image': ImageUrl.story_1,'name':'Pro Story'},
  {'image':ImageUrl.story_2,'name':'Highlight 1'},
  {'image':ImageUrl.story_3,'name':'Highlight 2'},
  {'image':ImageUrl.sotry_4,'name':'Highlight 3'},
   {'image':ImageUrl.story_2,'name':'Highlight 5'},
   {'image':ImageUrl.story_3,'name':'Highlight 6'},

];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: AppColor.backgrounColor,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              backgroundColor: AppColor.backgrounColor,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(250),
                child: Column(
                  children: [
                    //  SizedBox(height: 50,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          Container(
                            width: 76,
                            height: 32,
                            child: Image(
                              fit: BoxFit.fill,
                              image: AssetImage(ImageUrl.appLogo))),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                        height: 40,
                        width: 40,
                        child: Image.asset(ImageUrl.add_profile)),
                    
                        SizedBox(width: 15,),
                        Container(
                        height: 40,
                        width: 40,
                        child: Image.asset(ImageUrl.more_profile)),
                    
                        SizedBox(width: 10,),
                        ],
                      )
                      
                    ],
                  ),
                  SizedBox(height: 10,),
                    
                  Divider(thickness: 1,
                  color: Color.fromRGBO(48, 48, 48, 1),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    height: 70,
                    width: 70,
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage(ImageUrl.girl_1))),
                      SizedBox(height: 20,),
                      Text('johndeo_123'.tr,style: AppStyle.userId,),
                    
                       SizedBox(height: 20,),
                    
                       Text('profile_message_2'.tr,style: AppStyle.labelTextStyle,),
                    
                       SizedBox(height: 20,),
                       
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Professional'.tr,style: AppStyle.labelTextStyle),
                          SizedBox(width: 10,),
                    
                    //       CupertinoSwitch(
                    //   value: false,
                    //   onChanged: (value) {
                    //     // setState(() {
                    //     //   _switchValue = value;
                    //     // });
                    //   },
                    // ),
                         Container(
                          child: GestureDetector(
                            child: Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColor.primary),
                                borderRadius: BorderRadius.circular(15)
                              ),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Container(
                                  // height: 20,
                                  // width: 20,
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 17,right: 17),
                                    child: Image(image: AssetImage(ImageUrl.group_icon
                                    )),
                                  ),
                                ),
                              ),
                            ),
                            onHorizontalDragStart: (DragStartDetails details){
                              print('Start');
                              print(details);
                            },
                            onHorizontalDragEnd: (DragEndDetails details){
                               print('End');
                              print(details);
                            },
                            
                          ),
                         ),
                    
                          SizedBox(width: 10,),
                          Text('Social'.tr,style: AppStyle.labelTextStyle)
                        ],
                       ),
                      //  SizedBox(height: 30,),
                    
                    // TabBar(
                    //               // controller: TabController  _tabController = TabController() ,
                                  
                    //               unselectedLabelColor: Colors.red,
                    //               indicatorColor: AppColor.primary,
                    //               labelColor: AppColor.primary, 
                    //               indicatorSize: TabBarIndicatorSize.label,
                    //                indicator: UnderlineTabIndicator(
                    //     borderSide: BorderSide(width: 3.0, color: AppColor.primary),
                    //     insets: EdgeInsets.symmetric(horizontal:MediaQuery.sizeOf(context).width/3)
                    //   ),
                    //               tabs: [
                    //       Tab(
                    //         height: MediaQuery.sizeOf(context).height * 0.05,
                    //         icon: Image.asset(ImageUrl.reels_icon),
                            
                    //       ),
                    //       Tab(
                    //            height: MediaQuery.sizeOf(context).height * 0.05,
                    //             icon: Image.asset(ImageUrl.user_white),
                    //       ),
                        // ]), 
                        
                  ],
                ),
              ),
            ),

             SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              backgroundColor: AppColor.backgrounColor,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(0),
                child: Column(
                  children: [
                    TabBar(
                                unselectedLabelColor: Colors.red,
                                  indicatorColor: AppColor.primary,
                                  labelColor: AppColor.primary, 
                                  indicatorSize: TabBarIndicatorSize.label,
                                   indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(width: 3.0, color: AppColor.primary),
                        insets: EdgeInsets.symmetric(horizontal:MediaQuery.sizeOf(context).width/3)
                      ),
                                  tabs: [
                          Tab(
                            height: MediaQuery.sizeOf(context).height * 0.05,
                            icon: Image.asset(ImageUrl.reels_icon),
                            
                          ),
                          Tab(
                               height: MediaQuery.sizeOf(context).height * 0.05,
                                icon: Image.asset(ImageUrl.user_white),
                          ),
                        ]), 
                        
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
            height: MediaQuery.sizeOf(context).height * 3.5,
              child: Column(
                children: [
                 
                       
                    
                  //      Divider(thickness: 1,
                  // color: Color.fromRGBO(48, 48, 48, 1),
                  // ),
                    
                  // SizedBox(height: 30,),
                    
                  //   Container(
                  //     height: 64,
                  //     width: 64,
                  //     child: Image(image: AssetImage(ImageUrl.pin),)
                  //   ),
                  //    SizedBox(height: 30,),
                  //   Container(
                  //     width: 238,
                  //     child: Text('profile_message_3'.tr,style: AppStyle.userId,textAlign: TextAlign.center,)),
                    
                  //   SizedBox(height: 30,),
                  //   Container(
                  //     width: 293,
                  //     child: Text('profile_message_4'.tr,style: AppStyle.labelTextStyle,textAlign: TextAlign.center))
                    
                Expanded(
                  child: TabBarView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5,right: 5),
                        child: SizedBox(
                          height: MediaQuery.sizeOf(context).height,
                          child: GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisSpacing: 10,
                                  crossAxisCount: 3,
                                  childAspectRatio: 0.7 ),
                                 itemCount: 40,
                                 itemBuilder: (context, i){
                          return Stack(
                            children: [
                              Container(
                                height: 170,
                                width: MediaQuery.sizeOf(context).width,
                                child: Image(
                                  fit: BoxFit.fill,
                                  image: AssetImage(ImageUrl.reel_1)),
                              ),
                               Positioned(
                              top: 5,
                              right: 5,
                              child: Container(
                                height: 24,
                                width: 24,
                                child: Image.asset(ImageUrl.pin))
                              ),
                               Positioned(
                              bottom: 15,
                              left: 5,
                              child: Row(
                                children: [
                                  Container(
                                    height: 13,
                                    width: 13,
                                    child: Image.asset(ImageUrl.views)),
                                    Text(' 1.6k',style: TextStyle(color: Colors.white),)
                                ],
                              )
                              ),
                              
                            ],
                          );
                                 }
                                 ),
                        ),
                      ),
              
                      Padding(
                        padding: const EdgeInsets.only(left: 5,right: 5),
                        child: SizedBox(
                          height: MediaQuery.sizeOf(context).height - 480,
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                              SizedBox(
                                height: 90,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: story.length,
                                  itemBuilder: (context , i){
                                    return Row(
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              height: 68,
                                              width: 68,
                                              child: Image(image: AssetImage(story[i]['image'])),
                                            ),
                                            SizedBox(height: 5,),
                                            Text(story[i]['name'],style: AppStyle.labelTextStyle,)
                                          ],
                                        ),
                                        SizedBox(width: 15,)
                                      ],
                                    );
                                  }
                                  ),
                              ),
                              Expanded(
                                child: GridView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisSpacing: 10,
                                        crossAxisCount: 3,
                                        childAspectRatio: 0.99 ),
                                       itemCount: 40,
                                       itemBuilder: (context, i){
                                return Stack(
                                  children: [
                                    Container(
                                      height: 118,
                                      width: MediaQuery.sizeOf(context).width,
                                      child: Image(
                                        fit: BoxFit.fill,
                                        image: AssetImage(ImageUrl.social_1)),
                                    ),
                                    
                                  
                                  ],
                                );
                                       }
                                       ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
                ],
              ),
            ),
            )
          ],
         
        ),
           
      ),
    );
  }
}