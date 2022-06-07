

void main() {

}

Future<String> getString() async {
  await Future.delayed(
      const Duration(
        seconds: 1,
      ),
      () {});
  return 'test';
}
