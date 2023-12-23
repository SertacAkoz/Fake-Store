import 'package:fake_store/core/extensions/context_extensions.dart';
import 'package:fake_store/product/navigation/navigation_enums.dart';
import 'package:fake_store/product/navigation/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../theme/custom_color.scheme.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            padding: const EdgeInsets.all(0),
            decoration: const BoxDecoration(),
            child: Align(
              child: Container(
                color: context.theme.colorScheme.primary,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(),
                    FaIcon(
                      FontAwesomeIcons.shopify,
                      color: CustomColorScheme.lightColorScheme.onPrimary,
                    ),
                    Text(
                      'E-Commerce',
                      style: context.theme.textTheme.headlineLarge,
                    ),
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.house),
            title: const Text('Anasayfa'),
            trailing: const FaIcon(FontAwesomeIcons.caretRight),
            onTap: () async {
              await NavigationService.instance.navigateToPage(path: NavigationEnums.home.rawValue);
            },
          ),
          ListTile(
            leading: const FaIcon(FontAwesomeIcons.heart),
            title: const Text('Favoriler'),
            trailing: const FaIcon(FontAwesomeIcons.caretRight),
            onTap: () async {
              await NavigationService.instance.navigateToPage(path: NavigationEnums.favourite.rawValue);
            },
          ),
          // ExpansionTile(
          //   leading: const Icon(Icons.perm_device_information),
          //   title: const Text('Kurumsal'),
          //   trailing: const Icon(Icons.arrow_drop_down),
          //   children: <Widget>[
          //     ListTile(
          //       title: const Text('Biz Kimiz'),
          //       trailing: const Icon(Icons.arrow_right),
          //       onTap: () {},
          //     ),
          //     ListTile(
          //       title: const Text('Tarihçemiz'),
          //       trailing: const Icon(Icons.arrow_right),
          //       onTap: () {},
          //     ),
          //     ListTile(
          //       title: const Text('Kurumsal'),
          //       trailing: const Icon(Icons.arrow_right),
          //       onTap: () {},
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
