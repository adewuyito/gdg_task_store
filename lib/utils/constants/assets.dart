/// path assets (svgs and pngs) path
const String baseSvgPath = 'assets/svgs/';
const String basePngPath = 'assets/pngs/';

/// app logo
final String appIcon = 'app_icon'.png;

/// pngs

/// svgs


/// extensions
extension ImageExtension on String {
  // png paths
  String get png => '$basePngPath$this.png';
  // svgs path
  String get svg => '$baseSvgPath$this.svg';
}
