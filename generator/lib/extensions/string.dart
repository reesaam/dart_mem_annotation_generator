/// Strings have a important role in every programming project
/// and we definitely need to accomplish some changes or get some parts of string or anything
/// the best way of this data manipulations for strings are extension
/// and we are writing them here
extension StringManipulators on String {
  String get capitalizeFirst => this.replaceRange(0, 1, this[0].toUpperCase());
  String get correctImport => '${this.replaceFirst('${this.split('/').first}/', '')}';
}
