import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';
import 'package:pet_app/models/post_model.dart';

class ApiServices{
  String endpoint = "https://boopee.lifemoz.com/api/posts";
  Future<List<PostModel>> getUsers() async{
            Response response = await get(Uri.parse(endpoint));
            if(response.statusCode == 200 ){
              final List result = jsonDecode(response.body)['data'];
              return result.map(((e) => PostModel.fromJson(e))).toList();
            }
            else{
              throw Exception(response.reasonPhrase);
            }
  }
}

final userProvider = Provider<ApiServices>((ref)=>ApiServices());
