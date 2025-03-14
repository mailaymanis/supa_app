import 'package:flutter/material.dart';
import 'package:supa_app/supabase_keys.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
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




