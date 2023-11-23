import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

/// Creates [PagingController] that will be disposed automatically.
///
/// See also:
/// - [PagingController]
PagingController<PageKeyType, ItemType>
    usePagingController<PageKeyType, ItemType>(
        {required PageKeyType firstPageKey, bool requestFirstPage = true}) {
  return use<PagingController<PageKeyType, ItemType>>(
    _PagingControllerHook<PageKeyType, ItemType>(
        firstPageKey: firstPageKey, requestFirstPage: requestFirstPage),
  );
}

class _PagingControllerHook<PageKeyType, ItemType>
    extends Hook<PagingController<PageKeyType, ItemType>> {
  const _PagingControllerHook({
    required this.firstPageKey,
    this.requestFirstPage = true,
    List<Object?>? keys,
  }) : super(keys: keys);

  final PageKeyType firstPageKey;
  final bool requestFirstPage;

  @override
  HookState<PagingController<PageKeyType, ItemType>,
          Hook<PagingController<PageKeyType, ItemType>>>
      createState() => _PagingControllerHookState<PageKeyType, ItemType>();
}

class _PagingControllerHookState<PageKeyType, ItemType> extends HookState<
    PagingController<PageKeyType, ItemType>,
    _PagingControllerHook<PageKeyType, ItemType>> {
  late final controller = PagingController<PageKeyType, ItemType>(
    firstPageKey: hook.firstPageKey,
  );

  @override
  PagingController<PageKeyType, ItemType> build(BuildContext context) =>
      controller;

  @override
  void dispose() => controller.dispose();

  @override
  String get debugLabel => 'usePagingController';
}
