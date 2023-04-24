import 'package:dart_test/dart_test.dart';

final int DEFAULT_TEST_SIZE = 100000000;

void main(List<String> arguments) {
  final testSize = arguments.length > 0 ? (int.tryParse(arguments[0]) ?? DEFAULT_TEST_SIZE) : DEFAULT_TEST_SIZE;
  final points = <Point>[];
  for (var i = 0; i < testSize; i++) {
    points.add(Point(i.toDouble(), i.toDouble()));
  }
  // add 1 to each point 
  for (var i = 0; i < testSize; i++) {
    points[i].x += 1;
    points[i].y += 1;
  }
}
