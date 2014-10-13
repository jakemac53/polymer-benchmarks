// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library polymer_benchmarks.create_benchmark;

import 'dart:html';
import 'package:benchmark_harness/benchmark_harness.dart';
import 'html_emitter.dart';


class CreateBenchmark extends BenchmarkBase {
  Element container;
  String tagName;

  CreateBenchmark(String name, this.tagName, this.container)
      : super(name, emitter: const HtmlEmitter());

  run() {
    container.append(new Element.tag(tagName));
  }

  teardown() {
    while (container.firstChild != null) container.firstChild.remove();
  }
}
