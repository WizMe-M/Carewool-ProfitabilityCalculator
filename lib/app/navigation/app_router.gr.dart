// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CostCalculatorRoute.name: (routeData) {
      final args = routeData.argsAs<CostCalculatorRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CostCalculatorPage(
          form: args.form,
          key: args.key,
        ),
      );
    },
    DefaultRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const DefaultPage(),
      );
    },
    EditCostPriceRoute.name: (routeData) {
      final args = routeData.argsAs<EditCostPriceRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: EditCostPricePage(
          editWrap: args.editWrap,
          key: args.key,
        ),
      );
    },
    ProfitabilityRoute.name: (routeData) {
      final args = routeData.argsAs<ProfitabilityRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ProfitabilityPage(
          product: args.product,
          key: args.key,
        ),
      );
    },
    CostPriceHistoryRoute.name: (routeData) {
      final args = routeData.argsAs<CostPriceHistoryRouteArgs>(
          orElse: () => const CostPriceHistoryRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: CostPriceHistoryPage(key: args.key),
      );
    },
  };
}

/// generated route for
/// [CostCalculatorPage]
class CostCalculatorRoute extends PageRouteInfo<CostCalculatorRouteArgs> {
  CostCalculatorRoute({
    required CostPriceForm form,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CostCalculatorRoute.name,
          args: CostCalculatorRouteArgs(
            form: form,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'CostCalculatorRoute';

  static const PageInfo<CostCalculatorRouteArgs> page =
      PageInfo<CostCalculatorRouteArgs>(name);
}

class CostCalculatorRouteArgs {
  const CostCalculatorRouteArgs({
    required this.form,
    this.key,
  });

  final CostPriceForm form;

  final Key? key;

  @override
  String toString() {
    return 'CostCalculatorRouteArgs{form: $form, key: $key}';
  }
}

/// generated route for
/// [DefaultPage]
class DefaultRoute extends PageRouteInfo<void> {
  const DefaultRoute({List<PageRouteInfo>? children})
      : super(
          DefaultRoute.name,
          initialChildren: children,
        );

  static const String name = 'DefaultRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [EditCostPricePage]
class EditCostPriceRoute extends PageRouteInfo<EditCostPriceRouteArgs> {
  EditCostPriceRoute({
    required EditWrapCostPriceForm editWrap,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          EditCostPriceRoute.name,
          args: EditCostPriceRouteArgs(
            editWrap: editWrap,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'EditCostPriceRoute';

  static const PageInfo<EditCostPriceRouteArgs> page =
      PageInfo<EditCostPriceRouteArgs>(name);
}

class EditCostPriceRouteArgs {
  const EditCostPriceRouteArgs({
    required this.editWrap,
    this.key,
  });

  final EditWrapCostPriceForm editWrap;

  final Key? key;

  @override
  String toString() {
    return 'EditCostPriceRouteArgs{editWrap: $editWrap, key: $key}';
  }
}

/// generated route for
/// [ProfitabilityPage]
class ProfitabilityRoute extends PageRouteInfo<ProfitabilityRouteArgs> {
  ProfitabilityRoute({
    required Product product,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ProfitabilityRoute.name,
          args: ProfitabilityRouteArgs(
            product: product,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ProfitabilityRoute';

  static const PageInfo<ProfitabilityRouteArgs> page =
      PageInfo<ProfitabilityRouteArgs>(name);
}

class ProfitabilityRouteArgs {
  const ProfitabilityRouteArgs({
    required this.product,
    this.key,
  });

  final Product product;

  final Key? key;

  @override
  String toString() {
    return 'ProfitabilityRouteArgs{product: $product, key: $key}';
  }
}

/// generated route for
/// [CostPriceHistoryPage]
class CostPriceHistoryRoute extends PageRouteInfo<CostPriceHistoryRouteArgs> {
  CostPriceHistoryRoute({
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          CostPriceHistoryRoute.name,
          args: CostPriceHistoryRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'CostPriceHistoryRoute';

  static const PageInfo<CostPriceHistoryRouteArgs> page =
      PageInfo<CostPriceHistoryRouteArgs>(name);
}

class CostPriceHistoryRouteArgs {
  const CostPriceHistoryRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'CostPriceHistoryRouteArgs{key: $key}';
  }
}
