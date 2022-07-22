import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../controllers/MenuController.dart';
import '../../../models/provider_items.dart';
import '../../../responsive.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StarageDetails extends StatelessWidget {
  const StarageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Providers",
                style: Theme.of(context).textTheme.subtitle1,
              ),

              if (!Responsive.isDesktop(context))
                IconButton(
                  color: Colors.grey,
                  icon: Icon(Icons.menu), onPressed: () {  },
                  // onPressed: context.read<MenuController>().controlMenu,
                ),

              // if (!Responsive.isMobile(context));
              // Padding(
              //   padding:
              //   const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
              //   child: Text("Arcade Carwash"),
              // ),
            ],
          ),


          SizedBox(
            width: double.infinity,
            child: DataTable2(
              columnSpacing: defaultPadding,
              minWidth: 500,
              columns: [
                DataColumn(
                  label: Text("Provider"),
                ),
                DataColumn(
                  label: Text("Addresses"),
                ),
                DataColumn(
                  label: Text("Actions"),
                ),
              ],
              rows: List.generate(
                demoRecentFiles.length,
                    (index) => recentFileDataRow(demoRecentFiles[index]),
              ),
            ),
          ),
        ],
      ),
      // child: Column(
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Text(
      //       "Providers",
      //       style: TextStyle(
      //         fontSize: 18,
      //         fontWeight: FontWeight.w500,
      //       ),
      //     ),
      //     SizedBox(height: defaultPadding),
      //     Chart(),
      //     StorageInfoCard(
      //       svgSrc: "assets/icons/Documents.svg",
      //       title: "Documents Files",
      //       amountOfFiles: "1.3GB",
      //       numOfFiles: 1328,
      //     ),
      //     StorageInfoCard(
      //       svgSrc: "assets/icons/media.svg",
      //       title: "Media Files",
      //       amountOfFiles: "15.3GB",
      //       numOfFiles: 1328,
      //     ),
      //     StorageInfoCard(
      //       svgSrc: "assets/icons/folder.svg",
      //       title: "Other Files",
      //       amountOfFiles: "1.3GB",
      //       numOfFiles: 1328,
      //     ),
      //     StorageInfoCard(
      //       svgSrc: "assets/icons/unknown.svg",
      //       title: "Unknown",
      //       amountOfFiles: "1.3GB",
      //       numOfFiles: 140,
      //     ),
      //   ],
      // ),
    );
  }
}

DataRow recentFileDataRow(RecentProvider fileInfo) {
  return DataRow(
    cells: [
      DataCell(
        Row(
          children: [
            SvgPicture.asset(
              fileInfo.icon!,
              height: 30,
              width: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Text(fileInfo.title!),
            ),
          ],
        ),
      ),
      DataCell(Text(fileInfo.date!)),
      DataCell(Text(fileInfo.size!)),
    ],
  );
}