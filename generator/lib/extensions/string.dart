extension StringManipulators on String {
  String get capitalizeFirst => this.replaceRange(0, 1, this[0].toUpperCase());
  String get correctImport => '${this.replaceFirst('${this.split('/').first}/', '')}';
}
