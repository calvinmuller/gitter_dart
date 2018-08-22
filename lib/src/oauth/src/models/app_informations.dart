library oauth.app_informations;

class AppInformations {
  final String appId;
  final String appSecret;
  final String redirectUri;
  final String tokenUrl;
  
  AppInformations(this.appId, this.appSecret, this.redirectUri, this.tokenUrl);
}
