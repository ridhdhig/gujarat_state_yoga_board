import 'dart:io';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

extension ImageTypeExtension on String {
  ImageType get imageType {
    if (this.startsWith('http') || this.startsWith('https')) {
      return ImageType.network;
    } else if (this.endsWith('.svg')) {
      return ImageType.svg;
    } else if (this.startsWith('/data')) {
      return ImageType.file;
    } else {
      return ImageType.png;
    }
  }
}

enum ImageType { svg, png, network, file, unknown }

// ignore_for_file: must_be_immutable
class CustomImageView extends StatelessWidget {
  CustomImageView(
      {this.imagePath,
      this.height,
      this.width,
      this.imageHeight,
      this.imageWidth,
      this.color,
      this.fit,
      this.alignment,
      this.onTap,
      this.radius,
      this.margin,
      this.border,
      this.placeHolder = 'assets/images/image_not_found.png'});

  ///[imagePath] is required parameter for showing image
  String? imagePath;

  double? height;

  double? width;

  double? imageHeight;

  double? imageWidth;

  Color? color;

  BoxFit? fit;

  final String placeHolder;

  Alignment? alignment;

  VoidCallback? onTap;

  EdgeInsetsGeometry? margin;

  BorderRadius? radius;

  BoxBorder? border;

  @override
  Widget build(BuildContext context) {
    return _buildImageView();
  }

  Widget _buildImageView() {
    if (imagePath != null) {
      switch (imagePath!.imageType) {
        case ImageType.svg:
          return Container(
            height: height,
            width: width,
            child: SvgPicture.asset(
              imagePath!,
              height: imageHeight,
              width: imageWidth,
              fit: fit ?? BoxFit.contain,
              colorFilter: this.color != null
                  ? ColorFilter.mode(
                      this.color ?? Colors.transparent, BlendMode.srcIn)
                  : null,
            ),
          );
        case ImageType.file:
          return Container(
            child: Image.file(
              File(imagePath!),
              height: imageHeight,
              width: imageWidth,
              fit: fit ?? BoxFit.cover,
              color: color,
              errorBuilder: (context, url, error) => Image.asset(
                placeHolder,
                height: imageHeight,
                width: imageWidth,
                fit: fit ?? BoxFit.cover,
              ),
            ),
          );
        case ImageType.network:
          return CachedNetworkImage(
            height: imageHeight,
            width: imageWidth,
            fit: fit,
            imageUrl: imagePath!,
            color: color,
            placeholder: (context, url) => Container(
              height: 30,
              width: 30,
              child: LinearProgressIndicator(
                color: Colors.grey.shade200,
                backgroundColor: Colors.grey.shade100,
              ),
            ),
            errorWidget: (context, url, error) => Image.asset(
              placeHolder,
              height: imageHeight,
              width: imageWidth,
              fit: fit ?? BoxFit.cover,
            ),
          );
        case ImageType.png:
        default:
          return Image.asset(
            imagePath!,
            height: imageHeight,
            width: imageWidth,
            fit: fit ?? BoxFit.cover,
            color: color,
            errorBuilder: (context, url, error) => Image.asset(
              placeHolder,
              height: imageHeight,
              width: imageWidth,
              fit: fit ?? BoxFit.cover,
            ),
          );
      }
    }
    return SizedBox();
  }
}
