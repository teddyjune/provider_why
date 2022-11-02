class MainViewModel {
  int count = 0;
  bool isLoading = false;

  Future<void> countUp() async {
    // isLoading = true;
    //렌더링
    count++;
    // isLoading = false;
  }
}
