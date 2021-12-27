import 'package:flutter/foundation.dart';

class IsolateArgumentsFunction {
  int n1;
  int n2;
  IsolateArgumentsFunction(this.n1, this.n2);
  Future<int> isolate() async {
    //Q -> Tipo valor de entrada.
    //R -> Tipo valor de retorno.
    final result = await compute<IsolateArgumentsFunction, int>(
        _calculate, IsolateArgumentsFunction(n1, n2));
    return result;
  }

  static int _calculate(IsolateArgumentsFunction isolateFunction) {
    return (isolateFunction.n1 - 2) +
        (isolateFunction.n1 - 1) * isolateFunction.n2;
  }
}
