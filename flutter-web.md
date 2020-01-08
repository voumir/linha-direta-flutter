# Para habilitar Flutter para Web (chrome):

```bash
$ flutter channel dev
$ flutter upgrade
$ flutter config --enable-web
$ cd <into project directory>
$ flutter create .
$ flutter run -d chrome
```

https://stackoverflow.com/questions/56522065/flutter-new-web-project-not-showing-in-visual-studio-command-palette
https://flutter.dev/docs/get-started/web

---------------------------------------------------

### Funcionou:
https://flutter.dev/docs/get-started/web
basicamente era pra direcionara o CHANNEL Para BETA e nao para DEV

```bash
$ flutter channel beta
$ flutter upgrade
$ flutter config --enable-web

$ flutter create myapp
$ cd myapp
```

Build:
$ flutter build web

All:
$ flutter run -d all


chrome:
$ flutter run -d chrome 

----------------------------
## Add web support to an existing app
-------------------------------------
To add web support to an existing project, run the following command in a terminal from the root project directory:
```bash
$ flutter create .
```
To serve your app from localhost in Chrome, enter the following from the top of the package:
```bash
$ flutter run -d chrome
```

Or Ctrl+F5 pra abrir o browse e rodar direto
Se tiver tudo bem configurado.

Problemas atuis:
- funciona apenas web OU ios/android, os 3 "amt" ainda consegui configurar o 'main.dart';
- soh na versao BETA do Flutter ou channel beta;


Fiz os POC em 7/jan/2020 - Volmir


------[Voltando para a versao estavel]----
$ flutter channel stable
$ flutter upgrade

$ flutter devices
$ flutter emulators 
$ flutter emulators --launch Galaxy_Nexus_API_28 (ou outro id de emulador)

