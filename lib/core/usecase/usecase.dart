mixin UseCase<R, P> {
  Future<R> call(P params);
}

class NoParams {
  static final NoParams _instance = NoParams._internal();

  factory NoParams() => _instance;

  NoParams._internal();
}