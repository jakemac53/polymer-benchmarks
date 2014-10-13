// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'package:polymer/polymer.dart';
import 'package:polymer_benchmarks/create_benchmark.dart';

@CustomTag('x-a')
class XA extends PolymerElement {
  XA.created() : super.created();
}

main() {
  initPolymer().run(() {
    Polymer.onReady.then((_) {
      var bench = new CreateBenchmark(
          'create-polymer-element-with-template', 'x-a',
          querySelector('#container'));
      bench.measure();
      bench.report();
    });
  });
}
