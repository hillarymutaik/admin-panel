import 'package:car_wash/responsive.dart';
import 'package:car_wash/screens/dashboard/components/provider_details.dart';
import 'package:car_wash/screens/dashboard/components/services/create_service/res/custom_colors.dart';
import 'package:car_wash/screens/dashboard/components/services/create_service/widgets/database/crud/db_add_item_form.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:car_wash/controllers/MenuController.dart';

import '../../../../../constants.dart';
import '../../../../main/components/side_menu.dart';
import '../../header.dart';


class CreateService extends StatelessWidget {
  static const String routeName ='/create_service';

   CreateService({ Key? key }) : super(key: key);
  final FocusNode _titleFocusNode = FocusNode();
  final FocusNode _descriptionFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
        onTap: () {
          _titleFocusNode.unfocus();
          _descriptionFocusNode.unfocus();
        },
     child:Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // We want this side menu only for large screen
            if (Responsive.isDesktop(context))
              Expanded(
                // default flex = 1
                // and it takes 1/6 part of the screen
                child: SideMenu(),
              ),

            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child:Column(
                children: [
                  Header(),
                  SizedBox(height: defaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Create Service | System Overview",
                        style: Theme.of(context).textTheme.subtitle1,
                      ),

                    ],
                  ),
                  SizedBox(height: defaultPadding),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            SingleChildScrollView(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  bottom: 20.0,
                                ),
                                child: DbAddItemForm(
                                  titleFocusNode: _titleFocusNode,
                                  descriptionFocusNode: _descriptionFocusNode,
                                ),
                              ),
                            ),
                            if (Responsive.isMobile(context))
                              SizedBox(height: defaultPadding),
                          ],
                        ),
                      ),
                      if (!Responsive.isMobile(context))
                        SizedBox(width: defaultPadding),
                      // On Mobile means if the screen is less than 850 we dont want to show it
                      if (!Responsive.isMobile(context))
                        Expanded(
                          flex: 3,
                          child: StarageDetails(),
                        ),
                    ],
                  )
                ],
              ),
            ),

          ],
        ),
      ),
     )
    );
  }
}





