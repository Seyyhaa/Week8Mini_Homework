
enum AsyncValueState { loading, error, success }
class AsyncValue<T> {
  final AsyncValueState state;
  final T? data;
  final Object? error;

  AsyncValue.loading()
    : state = AsyncValueState.loading,
      data = null,
      error = null;

  AsyncValue.success(this.data) : state = AsyncValueState.success, error = null;

  AsyncValue.error(this.error) : state = AsyncValueState.error, data = null;
}
