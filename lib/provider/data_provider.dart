import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_app/models/post_model.dart';
import 'package:pet_app/services/services.dart';

final userDataProvider = FutureProvider<List<PostModel>>((ref) async{
  return ref.watch(userProvider).getUsers();
});