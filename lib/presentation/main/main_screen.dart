import 'package:flutter/material.dart';
import 'package:provider_why/presentation/main/main_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final viewModel = MainViewModel();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider why'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () async {
            setState(() {
              viewModel.isLoading = true;
            });

            setState(() {
              viewModel.countUp();
              viewModel.isLoading = false;
            });
          },
          child: viewModel.isLoading
              ? const CircularProgressIndicator()
              : Text(
                  '${viewModel.count}',
                  style: const TextStyle(fontSize: 80),
                ),
        ),
      ),
    );
  }
}
