// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library polymer_benchmarks.html_emitter;

import 'dart:html';
import 'package:benchmark_harness/benchmark_harness.dart';

class HtmlEmitter implements ScoreEmitter {
  final Element container;

  const HtmlEmitter({this.container});

  void emit(String testName, double value) {
    var el = new SpanElement()..text = '$testName(RunTime): $value us.';
    if (container == null) {
      document.body.append(el);
    } else {
      container.append(el);
    }
  }
}
