library gitter.code_informations;

import 'package:gitter/src/oauth/oauth.dart';

class GitterCodeInformations extends CodeInformations {
  GitterCodeInformations(AppInformations appInformations, {bool force: false})
      : super(
          appInformations.tokenUrl,
          {
            "client_id": appInformations.appId,
            "response_type": "code",
            "redirect_uri": appInformations.redirectUri,
          },
          force: force,
        );
}
