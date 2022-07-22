import 'package:car_wash/models/cards.dart';
import 'package:car_wash/responsive.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'dashboard_card.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  // var databaseRef = database.ref("my_database").child("my_data");
  // body: StreamBuilder(
  // stream: databaseRef.onValue,
  // builder: (BuildContext context, snap) {
  // if (!snap.hasError && snap.hasData) {
  // DataSnapshot snapshot = snap.data.snapshot;
  // if (snapshot.hasChildren()) {
  // List snapList = Map.from(snapshot.val()).values.toList();
  //
  // return ListView.builder(
  // itemCount: snapList.length,
  // itemBuilder: (BuildContext context, int index) {
  // return Card(
  // child: ListTile(
  // leading: IconButton(
  // onPressed: () {
  // editOrDeleteDataDialog(context, snapList[index]);
  // },
  // icon: Icon(
  // Icons.edit,
  // ),
  // ),
  // trailing: IconButton(
  // onPressed: () {
  // databaseRef.child(snapList[index]["id"]).remove();
  // },
  // icon: Icon(
  // Icons.delete_forever,
  // color: Colors.red,
  // ),
  // ),
  // title: Text(snapList[index]['text'].toString()),
  // ),
  // );
  // },
  // );
  // } else {
  // return Center(
  // child: Text(
  // "No Data Available...!",
  // style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
  // ),
  // );
  // }
  // } else {
  // return Center(
  // child: CircularProgressIndicator(),
  // );
  // }
  // },
  // ),


  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Dashboard | System Overview",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(
                  horizontal: defaultPadding * 1.5,
                  vertical:
                      defaultPadding / (Responsive.isMobile(context) ? 2 : 1),
                ),
              ),
              onPressed: () {createDataDialog(context);},
              icon: Icon(Icons.add),
              label: Text("Book"),
            ),
          ],
        ),
        SizedBox(height: defaultPadding),
        Responsive(
          mobile: FileInfoCardGridView(
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 && _size.width > 350 ? 1.3 : 1,
          ),
          tablet: FileInfoCardGridView(),
          desktop: FileInfoCardGridView(
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
        ),
      ],
    );
  }
}

// Widget tickets(Color color, BuildContext context, IconData icon,
//     String ticketsNumber, String newCount) {
//   return Card(
//     elevation: 2,
//     child: Container(
//       padding: EdgeInsets.all(22),
//       color: color,
//       width: MediaQuery.of(context).size.width < 1300
//           ? MediaQuery.of(context).size.width - 100
//           : MediaQuery.of(context).size.width / 5.5,
//       height: MediaQuery.of(context).size.height / 6,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: <Widget>[
//           Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Icon(
//                 icon,
//                 size: 36,
//                 color: Colors.white,
//               ),
//               Text(
//                 "View Details",
//                 style: TextStyle(
//                   fontSize: 18,
//                   color: Colors.white,
//                   // fontWeight: FontWeight.bold,
//                   fontFamily: 'HelveticaNeue',
//                 ),
//               )
//             ],
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text(
//                 ticketsNumber,
//                 style: TextStyle(
//                   fontSize: 34,
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontFamily: 'Raleway',
//                 ),
//               ),
//               SizedBox(
//                 height: 8,
//               ),
//               Text(
//                 newCount,
//                 style: TextStyle(
//                   fontSize: 14,
//                   color: Colors.white,
//                   // fontWeight: FontWeight.bold,
//                   fontFamily: 'HelveticaNeue',
//                 ),
//               )
//             ],
//           )
//         ],
//       ),
//     ),
//   );
// }


createDataDialog(BuildContext context) {
  TextEditingController nameController = TextEditingController();
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: new Container(
            width: 260.0,
            height: 390.0,
            decoration: new BoxDecoration(
              shape: BoxShape.rectangle,
              color: const Color(0xFFFFFF),
              borderRadius:
              new BorderRadius.all(new Radius.circular(32.0)),
            ),
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                // dialog top
                new Expanded(
                  child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image.asset("assets/images/logo.png"),
                        decoration: BoxDecoration(
                          color: Colors.white10,
                          borderRadius: BorderRadius.all(Radius.circular(3)),
                        ),
                      ),
                      // new Container(
                      //   // padding: new EdgeInsets.all(10.0),
                      //   decoration: new BoxDecoration(
                      //     color: Colors.green,
                      //   ),
                      //   child: new Text(
                      //     'Bookings',
                      //     style: TextStyle
                      //       color: Colors.black,
                      //       fontSize: 18.0,
                      //       fontFamily: 'helvetica_neue_light',
                      //     ),
                      //     textAlign: TextAlign.center,
                      //   ),
                      // ),
                    ],
                  ),
                ),

                // dialog centre
                new Expanded(
                  child: new Container(
                      child: new TextField(
                        decoration: new InputDecoration(
                          border: InputBorder.none,
                          filled: false,
                          contentPadding: new EdgeInsets.only(
                              left: 5.0,
                              top: 10.0,
                              bottom: 2.0,
                              right: 5.0),
                          hintText: ' Name',
                          hintStyle: new TextStyle(
                            color: Colors.black38,
                            fontSize: 12.0,
                            fontFamily: 'helvetica_neue_light',
                          ),
                        ),
                      )),
                  flex: 1,
                ),
                new Expanded(
                  child: new Container(
                      child: new TextField(
                        decoration: new InputDecoration(
                          border: InputBorder.none,
                          filled: false,
                          contentPadding: new EdgeInsets.only(
                              left: 5.0,
                              top: 2.0,
                              bottom: 2.0,
                              right: 5.0),
                          hintText: 'Telephone',
                          hintStyle: new TextStyle(
                            color: Colors.black38,
                            fontSize: 12.0,
                            fontFamily: 'helvetica_neue_light',
                          ),
                        ),
                      )),
                  flex: 1,
                ),
                new Expanded(
                  child: new Container(
                      child: new TextField(
                        decoration: new InputDecoration(
                          border: InputBorder.none,
                          filled: false,
                          contentPadding: new EdgeInsets.only(
                              left: 5.0,
                              top: 2.0,
                              bottom: 2.0,
                              right: 5.0),
                          hintText: ' Date',
                          hintStyle: new TextStyle(
                            color: Colors.grey.shade500,
                            fontSize: 12.0,
                            fontFamily: 'helvetica_neue_light',
                          ),
                        ),
                      )),
                  flex: 1,
                ),
                // dialog bottom
                // new Expanded(
                //   child: new Container(
                //     padding: new EdgeInsets.all(6.0),
                //     decoration: new BoxDecoration(
                //       color: const Color(0xFF33b17c),
                //     ),
                //     child: new Text(
                //       'Book Now',
                //       style: TextStyle(
                //         color: Colors.white,
                //         fontSize: 18.0,
                //         fontFamily: 'helvetica_neue_light',
                //       ),
                //       textAlign: TextAlign.center,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: new Text(
              'CANCEL',
            style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 18.0,
            fontFamily: 'helvetica_neue_light',
            ),
            textAlign: TextAlign.center,
            ),
            ),
            SizedBox(width: 40,),
            FlatButton(
              onPressed: () {
                // String key = databaseRef.push().key;
                // databaseRef
                //     .child(key)
                //     .set({"text": nameController.text, "id": key});
                Navigator.pop(context);
              },
              child:new Text(
           'SUBMIT',
            style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 18.0,
            fontFamily: 'helvetica_neue_light',
            ),
            textAlign: TextAlign.center,
            ),
            ),
          ],
            );

      });
}

editOrDeleteDataDialog(BuildContext context, oldData) {
  TextEditingController nameController =
  TextEditingController(text: oldData["text"]);
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Add Data"),
          content: TextField(
            controller: nameController,
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancel"),
            ),
            FlatButton(
              onPressed: () {
                // databaseRef
                //     .child(oldData["id"])
                //     .set({"text": nameController.text, "id": oldData["id"]});
                Navigator.pop(context);
              },
              child: Text("Update"),
            )
          ],
        );
      });
}

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) => FileInfoCard(info: demoMyFiles[index]),
    );
  }
}
