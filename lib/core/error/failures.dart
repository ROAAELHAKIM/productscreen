abstract class Failures{
  String message;
  Failures(this.message);
  @override
  String toString() {
    // TODO: implement toString
    return message;
  }
}
class RemoteFailure extends Failures{
  RemoteFailure(super.message);
}


class LocalFailure extends Failures{
  LocalFailure(super.message);
}