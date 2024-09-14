import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gd_store/utils/constants/constants.dart';

class ProfileImage extends StatelessWidget {
  final String image;
  const ProfileImage({
    super.key,
    this.editImage,
    required this.image,
  });

  final VoidCallback? editImage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: editImage,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(125),
              border: Border.all(
                width: 3,
                color: Colors.black,
                strokeAlign: BorderSide.strokeAlignOutside,
              ),
            ),
            child: Container(
              width: 125,
              height: 125,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(125),
                border: Border.all(
                  width: 1,
                  color: Colors.white,
                  strokeAlign: BorderSide.strokeAlignOutside,
                ),
              ),
              child: CachedNetworkImage(
                imageUrl: image,
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
                errorWidget: (context, url, error) => Image.asset(
                  "assets/profile_image.png",
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
            ),
          ),
          editImage != null
              ? Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: appColors.grey767676,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(
                    Icons.mode_edit_outline_outlined,
                    color: appColors.greyF6F6F6,
                  ),
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
