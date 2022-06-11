import 'package:flutter/material.dart';
import 'but.dart';
//import './profile_model.dart';
//import '../lib/colors.dart' as RecehanColors;
// ignore: library_prefixes

class profile extends StatefulWidget {
  const profile({ Key? key }) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          ProfileViewAppBar(),
          SliverList(delegate: SliverChildListDelegate([
            Center(
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  gradient: LinearGradient(
                    colors: [Colors.red, Colors.red]
                  )
                ),
                
                child: CircleAvatar(

                  backgroundColor: Colors.transparent,
                  child: Text('N', style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold
                  )),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text('Naradira', style: TextStyle(
                fontSize: 18.0,
                color: Colors.red,
                fontWeight: FontWeight.bold
              ))
            ),
            Center(
              child: Text('Naradiratriandini@gmail.com', style: TextStyle(
                fontSize: 18.0,
                color: Colors.black.withOpacity(.2),
                fontWeight: FontWeight.bold
              ))
            ),

            // SizedBox(height: 30.0),
            // Center(child: ProfileRating()),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.all(20.0),
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  
                  Text('Account', style:TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'OpenSans'
                  )),
                  SizedBox(height: 10.0),
 
                  Wrap(
                    children: List.generate(1, (_) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(0.0),
                          leading: Container(
                            width: 350.0,
                            height: 500.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60.0),
                            ),
                          ),
                          title: Text('Change Language'),
                          // subtitle: Text('We Have More Project'),
                        ),
                        
                      );
                    }),
                  ),
                  Wrap(
                    children: List.generate(1, (_) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(0.0),
                          leading: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60.0),
                             
                            ),
                          ),
                          title: Text('Term of Service'),
                          // subtitle: Text('We Have More Project'),
                        ),
                        
                      );
                    }),
                  ),  
                  Wrap(
                    children: List.generate(1, (_) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(0.0),
                          leading: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60.0),
                              
                            ),
                          ),
                          title: Text('Payment Method'),
                          // subtitle: Text('We Have More Project'),
                        ),
                        
                      );
                    }),
                  ), 
                  Wrap(
                    children: List.generate(1, (_) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(0.0),
                          leading: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60.0),
                             
                            ),
                          ),
                          title: Text('Favorite Service'),
                          // subtitle: Text('We Have More Project'),
                        ),
                        
                      );
                    }),
                  ),
                  Wrap(
                    children: List.generate(1, (_) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(0.0),
                          leading: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60.0),
                             
                            ),
                          ),
                          title: Text('Invite Friends'),
                          // subtitle: Text('We Have More Project'),
                        ),
                        
                      );
                    }),
                  ), 
                  Wrap(
                    children: List.generate(1, (_) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          contentPadding: EdgeInsets.all(0.0),
                          leading: Container(
                            width: 50.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60.0),
                              
                            ),
                          ),
                          title: Text('About Us'),
                          // subtitle: Text('We Have More Project'),
                        ),
                        
                      );
                    }),
                  )

                ],
              ),
            )
          ])),
        ],
      ),
    );
  }

class ProfileViewAppBar extends StatelessWidget {
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.transparent,
      leading: Container(
        padding: EdgeInsets.all(10.0),
        child: FlatButton(
          onPressed: () {},
          child: Icon(Icons.arrow_back_ios, color: Colors.red),
        ),
      ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {},
            child: Icon(Icons.bookmark, color: Colors.yellowAccent),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {},
            child: Icon(Icons.settings, color: Colors.purple),
          ),
        ),
        SizedBox(width: 10.0)
      ],
    );
  }
}

// class ProfileRating extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
//       child: Flex(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         direction: Axis.horizontal,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           StarRating(5, colors: [RecehanColors.red, RecehanColors.redWarm]),
//           SizedBox(width: 20.0),
//           StarRating(2, colors: [RecehanColors.purple, RecehanColors.purpleWarm]),
//           SizedBox(width: 20.0),
//           StarRating(3, colors: [RecehanColors.yellow, RecehanColors.yellowWarm])
//         ],
//       ),
//     );
//   }
// }

// class StarRating extends StatelessWidget {
//   final int star;
//   final List<Color> colors;
  
//   StarRating(this.star, {required this.colors});

//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width / 5,
//       height: 70.0,
//       padding: EdgeInsets.all(10.0),
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20.0),
//         boxShadow: [BoxShadow(
//           blurRadius: 5.0,
//           color: Colors.black.withOpacity(.2)
//         )],
//         gradient: LinearGradient(
//           colors: colors == null ? [Colors.red, Colors.white] : colors
//         )
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Text(star.toString() + '.0', style: TextStyle(
//             fontSize: 20.0,
//             color: Colors.white.withOpacity(.7),
//             fontWeight: FontWeight.w700
//           )),
//           Flexible(
//             child: Row(
//               mainAxisSize: MainAxisSize.min,
//               children: List.generate(star, (index) => Icon(Icons.star, size: 10.0, color: Colors.white.withOpacity(.7))),
//             ),
    //       )
    //     ],
    //   ),
    // );
//   }
// }