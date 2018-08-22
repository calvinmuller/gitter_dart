library gitter.token_informations;

import 'package:gitter/src/oauth/oauth.dart';

class GitterTokenInformations extends TokenInformations {
  GitterTokenInformations(AppInformations appInformations, String code)
      : super(
            appInformations.tokenUrl,
            {
              "client_id": appInformations.appId,
              "client_secret": appInformations.appSecret,
              "code": code,
              "redirect_uri": appInformations.redirectUri,
              "grant_type": "authorization_code",
            },
            headers: {
              "Accept": "application/json",
              "Content-Type": "application/json"
            },
            isPost: true);
}
