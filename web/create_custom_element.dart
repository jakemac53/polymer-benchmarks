// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'package:polymer_benchmarks/create_benchmark.dart';

class XA extends HtmlElement {
  XA.created() : super.created();
}

main() {
  document.registerElement('x-a', XA);
  var bench = new CreateBenchmark(
      'create-custom-element', 'x-a', querySelector('#container'));
  bench.measure();
  bench.report();
}
