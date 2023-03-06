import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:youtube_alazhar/app/modules/profile_settings/views/pages/watch_time_stats.dart';
import 'package:youtube_alazhar/app/routes/app_pages.dart';
import 'package:youtube_alazhar/core/services/theme.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Padding(
        padding:
            EdgeInsets.symmetric(vertical: MediaQuery.of(context).padding.top),
        child: const AppDrawer(),
      ),
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class AppDrawer extends GetWidget<HomeController> {
  const AppDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            onTap: () {
              Get.back();
            },
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60"),
            ),
            title: const Text("Fatma Maged ❤️",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                )),
            subtitle: const Text("Manage your youtube account",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.blue,
                    fontSize: 10)),
          ),
          const Spacer(),
          ListTile(
            onTap: () {
              Get.toNamed(Routes.PROFILE_SETTINGS);
            },
            leading: const Icon(
              Iconsax.user,
            ),
            title: const Text("Your channel",
                style: TextStyle(fontWeight: FontWeight.w400)),
          ),
          const SizedBox(
            height: 8,
          ),
          ListTile(
            onTap: () {
              Get.back();
            },
            leading: const Icon(
              Iconsax.user_add,
            ),
            title: const Text("Add account",
                style: TextStyle(fontWeight: FontWeight.w400)),
          ),
          const SizedBox(
            height: 8,
          ),
          ListTile(
            onTap: () {
              Get.to(const WatchTime());
            },
            leading: const Icon(
              Iconsax.chart4,
            ),
            title: const Text("Watch time",
                style: TextStyle(fontWeight: FontWeight.w400)),
          ),
          const SizedBox(
            height: 8,
          ),
          ListTile(
            onTap: () {
              Get.back();
            },
            leading: const Icon(
              Iconsax.setting4,
            ),
            title: const Text("Settings",
                style: TextStyle(fontWeight: FontWeight.w400)),
          ),
          ListTile(
            onTap: () {
              Get.back();
            },
            leading: const Icon(
              Iconsax.moon,
            ),
            title: const Text("Dark Mode",
                style: TextStyle(fontWeight: FontWeight.w400)),
            trailing: Obx(
              () => SizedBox(
                width: 60,
                child: Switch(
                  value: controller.isDarkMode.value,
                  onChanged: (value) {
                    controller.isDarkMode.value = value;
                    ThemeService().switchTheme();
                  },
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Spacer()
        ],
      ),
    );
  }
}
