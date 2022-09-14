class TalentyErrors {
  static const Map<String, String> _messages = {
    '0001': 'El correo que ingresaste no se encuentra en nuestras bases de datos',
    '0002': 'La contraseña que ingresaste no es correctas'
  };

  static const Map<String, String> _titles = {
    '0001': 'Usuario no registrado',
    '0002': 'Contraseña incorrecta'
  };

  static String errorMessage(String errorCode) => _messages[errorCode] ?? '';
  static String errorTitle(String errorTitle) => _titles[errorTitle] ?? '';
}