import 'package:flutter/foundation.dart';

class IsolateCalculate {
  int? _n;
  IsolateCalculate(this._n);
  Future<int> isolateCalculate() async {
    // compute<T,R>(funcaoTopLevel).
    //Q -> Tipo de valor de entrada.
    //R -> Tipo de valor de resultado.
    //funcaoTopLevel -> É a funcão que recebe o Q.
    final result = await compute<int, int>(_fibonacci, _n!);
    return result;
  }

  static int _fibonacci(int n) {
    if (n < 2) {
      return n;
    }
    // Fn = F(n-1) +F(n-2)
    final fn = _fibonacci(n - 2) + _fibonacci(n - 1);
    return fn;
  }
}
