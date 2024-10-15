
<p align="center">
  Dart Model Entity Mapper Annotation Generator
</p>
<p align="center">
  <!-- Pub Version -->
  <a href="https://pub.dev/packages/mem_annotation"><img src="https://img.shields.io/pub/v/mem_annotation?logo=dart" alt="PubVersion"></a>
  <!-- Pub Points} -->
  <a href="https://pub.dev/packages/mem_annotation"><img src="https://img.shields.io/pub/points/mem_annotation?logo=dart" alt="PubPoints"></a>
  <!-- GitHub Repo -->
  <a href="https://github.com/reesaam/dart_mem_annotation_generator"><img src="https://img.shields.io/badge/repo-Mem_Annotation-yellowgreen?logo=github" alt="build"></a>
  <!-- GitHub Stars -->
  <a href="https://github.com/reesaam/dart_mem_annotation_generator"><img src="https://img.shields.io/github/stars/felangel/bloc.svg?style=flat&logo=github&colorB=deeppink&label=stars" alt="Star on Github"></a>
  <!-- DartDoc -->
  <a href="https://pub.dev/documentation/mem_annotation/latest"><img src="https://img.shields.io/badge/dartdocs-latest-blue.svg" alt="Latest dartdocs"></a>
</p>
<p align="center">
  <a href="https://github.com/reesaam/dart_mem_annotation_generator"><img src="https://img.shields.io/badge/Android-black?logo=android" alt="android"></a>
  <a href="https://github.com/reesaam/dart_mem_annotation_generator"><img src="https://img.shields.io/badge/iOS-black?logo=apple" alt="ios"></a>
  <a href="https://github.com/reesaam/dart_mem_annotation_generator"><img src="https://img.shields.io/badge/Web-black" alt="ios"></a>
  <a href="https://github.com/reesaam/dart_mem_annotation_generator"><img src="https://img.shields.io/badge/Linux-black?logo=linux" alt="linux"></a>
  <a href="https://github.com/reesaam/dart_mem_annotation_generator"><img src="https://img.shields.io/badge/Windows-black" alt="windows"></a>
  <a href="https://github.com/reesaam/dart_mem_annotation_generator"><img src="https://img.shields.io/badge/MacOS-black?logo=apple" alt="mac-os"></a>

</p>

Mem Annotation Generator is a Code Generator Plugin to Generate Models, Entities and Mapper base on Annotation.
This package designed to prevent adding extra codes to add Models, Entities and Mappers one by one.
You can use it for Models, APIs and JSONs.

### Contents:
* [Getting Started](#Getting-Started)
* [Usage](#Usage)
* [Options](#Options)
  * [Some Examples](#Some-Examples)
* [Docs](#Docs)
* [About Author](#About-Author)
* [Packages and Dependencies](#Packages-and-Dependencies)
* [Testing](#Testing)

## Getting Started

Add dependencies in the `pubspec.yaml`:
```yaml
dependencies:
  mem_annotation: ^latest

dev_dependencies:
  build_runner: ^latest
  mem_annotation_generator: ^latest
```

Get the Changes by:
```shell
flutter pub get
```
or
```shell
dart pub get
```

## Usage

```dart
import 'package:mem_annotation/annotation.dart';
```

Add desired `@Annotation` on top of the desired class and set the desired Options.

Such as:

`HomePage`
```dart
@GetPut.model()
class SomeModel {}
```
```dart
@GetPut.entity()
class SomeEntity {}
```

then you should run the `build_runner` to generate the codes and creating related file and include all the pages, controllers, components and repositories in one place and prepared to use.
You can use
```shell
dart pub run build_runner build --delete-conflicting-outputs
```

### You can check the `/example` for a more complete example, more details and further information.

## Options

You can set some annotations and its Options in the `@Annotation`
Available Options:
- `@GetPut.page()`
  - `as`: Change the Name of the Page in the dependencies and use it as another name.
  - `route`: The plugin will generate a default name based on the page's name, but also, you can set a String for the route and the new route will be used. If the `route` has not been set, the default generate route will use.
  - `isInitial`: You  should set a `initialRoute` for the GetX and the app will start by that page and it's route, so it is mandatory. and you can set your initial page by this flag. The plugin would not throw an exception if you set two or more initial pages, but it will set the first page in the generate pages list that marked as initial page as the default initial route.
  - `isUnknown`: You can set a unknown route for the GetX and the app will show the page by it's route, if there was a change page without valid route. You can set your unknown page by this flag. The plugin would not throw an exception if you set two or more unknown pages, but it will set the first page in the generate pages list that marked as unknown page as the default unknown route.
- `@GetPut.controller()`
    - `as`: Change the Name of the Controller in the dependencies and use it as another name.
- `@GetPut.component()`
    - `as`: Change the Name of the Component in the dependencies and use it as another name.
- `@GetPut.repository()`
    - `as`: Change the Name of Repository in the dependencies and use it as another name.

Some Examples:

`Settings:`
```dart
@GetPut.page()
class SettingsPage extends GetView<SettingsController> {}
```

## Docs
<a href="https://github.com/reesaam/dart_mem_annotation_generator/tree/main/generator/doc/api"><img src="https://img.shields.io/badge/GitHub-Docs_Repository-important?logo=github" alt="build"></a>

## About Author

### Resam Taghipour
<a href="https://www.resam.site"><img src="https://img.shields.io/badge/Website-resam.site-blue" alt="Pub"></a>
<a href="https://github.com/reesaam"><img src="https://img.shields.io/badge/GitHub-reesaam-black?style=flat&logo=github&link=https%3A%2F%2Fgithub.com%2Freesaam" alt="account"></a>
<a href="https://www.linkedin.com/in/resam"><img src="https://img.shields.io/badge/LinkedIn-resam-blue?logo=linkedin" alt="Pub"></a>
<a href="emailto:resam@resam.site"><img src="https://img.shields.io/badge/Email-resam-important?logo=maildotru" alt="Pub"></a>


## Packages and Dependencies
<a href="https://dart.dev"><img src="https://img.shields.io/badge/Dart-red?logo=dart" alt="Pub"></a>
<a href="https://flutter.dev"><img src="https://img.shields.io/badge/Flutter-blue?logo=flutter" alt="Pub"></a>
<a href="https://pub.dev/packages/build_runner"><img src="https://img.shields.io/badge/pub-BuildRunner-red?logo=dart" alt="Pub"></a>
<a href="https://pub.dev/packages/dartdoc"><img src="https://img.shields.io/badge/pub-DartDoc-red?logo=dart" alt="Pub"></a>

## License
This project is licensed under the '**BSD-3-Clause**' License - see the LICENSE for details.

<a href="https://pub.dev/packages/dart_model_entity_annotation/license"><img src="https://img.shields.io/badge/LICENSE-blue" alt="Pub"></a>