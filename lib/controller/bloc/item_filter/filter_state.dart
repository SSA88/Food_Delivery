abstract class FilterState {}

class FilterInitialState extends FilterState {}

class FilterLoadingState extends FilterState {
  List<dynamic> categoryDataFilter;
  FilterLoadingState(this.categoryDataFilter,);
}
