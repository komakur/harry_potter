typedef JsonMap = Map<String, dynamic>;

enum NetworkBlocStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == initial;
  bool get isLoading => this == loading;
  bool get isSuccess => this == success;
  bool get isFailure => this == failure;
}
