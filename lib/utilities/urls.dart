// ignore_for_file: always_declare_return_types

import 'package:url_launcher/url_launcher.dart';

// ignore: type_annotate_public_apis
whatsapp() async {
  const whatsappUrl =
      "https://api.whatsapp.com/send?phone=5584998559833&text=Olá, Breno! Estou precisando de um dos seus serviços.";

  if (await canLaunch(whatsappUrl)) {
    await launch(whatsappUrl);
  } else {
    throw 'Could not launch $whatsappUrl';
  }
}

// ignore: type_annotate_public_apis
instagram() async {
  const instagramUrl = "https://instagram.com.br/brenoitalo16";

  if (await canLaunch(instagramUrl)) {
    await launch(instagramUrl);
  } else {
    throw 'Could not launch $instagramUrl';
  }
}

// ignore: type_annotate_public_apis
twitter() async {
  const twitterUrl = "https://twitter.com/BrenoItalo_16";

  if (await canLaunch(twitterUrl)) {
    await launch(twitterUrl);
  } else {
    throw 'Could not launch $twitterUrl';
  }
}
