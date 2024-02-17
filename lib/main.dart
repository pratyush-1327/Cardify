import 'package:cardify/authdone_screen.dart';
import 'package:cardify/authscreen.dart';
import 'package:cardify/components/Layout.dart';
import 'package:cardify/firebase_options.dart';
import 'package:cardify/provider/auth.provider.dart';
import 'package:cardify/register_screen.dart';
import 'package:cardify/screens/upload.document.dart';
import 'package:cardify/screens/video.verification.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cardify/login_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<FireAuth>(
          create: (context) => FireAuth(),
        )
      ],
      child: MaterialApp(
        title: 'login screen',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
        ),
        initialRoute: VideoVerification.videoVerificationtRoute,
        routes: {
          '/auth': (context) =>
              const AuthScreen(),
               // Route for the login screen
               UploadDocument.uploadDocumentRoute: (context) => const UploadDocument(),
          VideoVerification.videoVerificationtRoute: (context) =>
              const VideoVerification(),
          '/': (context) => const LoginScreen(),
          '/home': (context) => const Layout(),
          '/register':(context) => const RegisterScreen(),
          '/authdone':(context) => const FaceDone(),
        },
      ),
    );
  }
}
