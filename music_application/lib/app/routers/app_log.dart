import 'package:logger/logger.dart';

PrettyPrinter _printer = PrettyPrinter(
    methodCount: 2, // number of method calls to be displayed
    errorMethodCount: 8, // number of method calls if stacktrace is provided
    lineLength: 120, // width of the output
    colors: true, // Colorful log messages
    printEmojis: true, // Print an emoji for each log message
    printTime: false // Should each log print contain a timestamp
);
Logger _dLog = Logger(level: Level.debug, printer: _printer);
Logger _vLog = Logger(level: Level.verbose, printer: _printer);
Logger _wLog = Logger(level: Level.warning, printer: _printer);
Logger _eLog = Logger(level: Level.error, printer: _printer);
Logger _iLog = Logger(level: Level.info, printer: _printer);

class MyFilter extends LogFilter{
  @override
  bool shouldLog(LogEvent event) {
    return true;
  }
}

class MyPrinter extends LogPrinter{
  @override
  List<String> log(LogEvent event) {
    return [event.message];
  }
}

void dLog(message){
  _dLog.d(message);
}


