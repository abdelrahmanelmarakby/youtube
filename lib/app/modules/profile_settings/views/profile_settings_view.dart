import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:youtube_alazhar/core/global/const.dart';
import 'package:youtube_alazhar/core/resourses/styles_manger.dart';

import '../controllers/profile_settings_controller.dart';

class ProfileSettingsView extends GetView<ProfileSettingsController> {
  const ProfileSettingsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Channel Settings'),
        centerTitle: false,
        actions: const [
          SizedBox(
            width: 16,
          ),
          Icon(Iconsax.search_normal),
          SizedBox(
            width: 16,
          ),
          Icon(Iconsax.notification),
          SizedBox(
            width: 16,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ImageHeader(),
            ListTile(
              title: const Text("Name"),
              subtitle: Text(
                "Fatma Maged 💚✨",
                style: getLightTextStyle(color: Colors.grey),
              ),
              trailing: const Icon(Iconsax.edit),
            ),
            const Divider(),
            ListTile(
              title: const Text("Nickname"),
              subtitle: Text(
                "💚💚💚",
                style: getLightTextStyle(color: Colors.grey),
              ),
              trailing: const Icon(Iconsax.edit),
            ),
            const Divider(),
            ListTile(
              title: const Text("Channel link"),
              subtitle: Text(
                "youtube.com/fatma_maged",
                style: getLightTextStyle(color: Colors.grey),
              ),
              trailing: const Icon(Iconsax.link_1),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Privacy",
                style: getBoldTextStyle(),
              ),
            ),
            Column(
              children: [
                ListTile(
                  onTap: () {
                    Get.back();
                  },
                  title: const Text(
                    "Keep all my subscriptions private",
                  ),
                  trailing: Obx(
                    () => SizedBox(
                      width: 60,
                      child: Switch(
                        value: controller.privateSubscriptions.value,
                        onChanged: (value) {
                          controller.privateSubscriptions.value = value;
                        },
                      ),
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    Get.back();
                  },
                  title: const Text(
                    "Keep all my playlists private",
                  ),
                  trailing: Obx(
                    () => SizedBox(
                      width: 60,
                      child: Switch(
                        value: controller.privatePlaylist.value,
                        onChanged: (value) {
                          controller.privatePlaylist.value = value;
                        },
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ImageHeader extends StatelessWidget {
  const ImageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.height / 4,
      width: context.width,
      child: Stack(
        children: [
          Image.network(
            dummyImage4,
            fit: BoxFit.cover,
            width: context.width,
            colorBlendMode: BlendMode.darken,
            color: Colors.black38,
          ),
          const Positioned(
            top: 20,
            left: 20,
            child: Icon(Iconsax.camera),
          ),
          Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      dummyImage3,
                      colorBlendMode: BlendMode.darken,
                      //color: Colors.black,
                    )),
              ),
            ),
          ),
          Center(
            child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  // border: Border.all(color: Colors.white, width: 2),
                ),
                child: const Icon(Iconsax.camera)),
          ),
        ],
      ),
    );
  }
}
