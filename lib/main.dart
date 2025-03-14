import 'package:flutter/material.dart';
import 'package:supa_app/helper/supabase_keys.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    //url and anonKey is private and sensitive data
      url:SupabaseKeys.appUrl,
      anonKey:SupabaseKeys.apiKey,
  );
  runApp(const SupabaseApp());
}

class SupabaseApp extends StatelessWidget {
  const SupabaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner:false,

    );
  }
}




