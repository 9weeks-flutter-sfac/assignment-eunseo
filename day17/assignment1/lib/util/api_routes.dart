class ApiRoutes {
  static const String authWithPassword =
      '/api/collections/users/auth-with-password';
  static const String readUserList =
      '/api/collections/users/records?sort=-created';
  static const String signUp = '/api/collections/users/records';
  static const String readSecrets =
      '/api/collections/secrets/records?sort=-created';
  static const String uploadSecrets = '/api/collections/secrets/records';
}
