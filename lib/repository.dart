abstract class Repository {
  String getName();
}

class RepositoryImp implements Repository {
  @override
  String getName() {
    return 'Hello';
  }
}
