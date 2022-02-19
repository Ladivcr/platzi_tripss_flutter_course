import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'platzi_trips.dart';
import 'platzi_trips_cupertino.dart';
import 'package:platzi_tripss_app/User/bloc/bloc_user.dart';
import 'package:platzi_tripss_app/User/ui/screens/sign_in_screen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
/*
void main() {
  runApp(const MyApp());
}*/

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]); // Para la barrita en android. Entrar en pantalla completa

    /*La composición nos dice: Cuál es el bloc que quieres exponer
    * y a que widget hijo se lo quieres exponer*/

    /*De esta manera, todos los métodos que yo ponga en UserBloc
    * podrán ser accedidos por todos los hijos de MaterialApp*/
    return BlocProvider(
        child: MaterialApp(
            title: 'Flutter Demo',
            //home: PlatziTripsCupertino(),
            home: SignInScreen(),
        ),
        bloc: UserBloc()
    );
  }
}



