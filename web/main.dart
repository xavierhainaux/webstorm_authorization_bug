import 'dart:html';

main() async {
  querySelector('#output').text = 'Your Dart app is running.';

  String url = 'hello.png?nc=${new DateTime.now().millisecondsSinceEpoch}';
  var image = new ImageElement(src: url)..crossOrigin = 'anonymous';

  await image.onLoad.first;
}
