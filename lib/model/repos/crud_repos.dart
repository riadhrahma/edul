

abstract class CrudRepos {
  dynamic fetch({required String id}) {
    throw 'no data';
  }

  Future<void> add({required constructor}) async {}

  Future<void> delete({required String id}) async {}

  Future<void> update({required constructor}) async {}

  Future<bool> isExist({required String id}) async {
    throw 'no data';
  }
}
