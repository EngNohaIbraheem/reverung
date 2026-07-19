import 'package:flutter/material.dart';
import 'package:newfashionstore/core/network/cache/cache_helper.dart';
import 'app.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.initCacheHelper();
  // Bloc.observer = MyBlocObserver();
  await CacheHelper.getToken();
  runApp(const MyApp());
}
