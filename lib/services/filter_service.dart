import '../core.dart';

class FilterService {
  List<Filter> getFilterList() {
    return <Filter>[
      // Filter("Best Match"),
      Filter("Highest Price"),
      Filter("Lowest Price"),
    ];
  }
}
