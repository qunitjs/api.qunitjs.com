---
layout: default
title: QUnit.start
categories:
  - main
	- async
---

## `QUnit.start()`

`QUnit.start()` must be used to start a test run that has `<a href="/QUnit.config/">QUnit.config</a>.autostart` set to `false`.

<p class="warning">Warning: This method was previously used to control async tests on text contexts along with `QUnit.stop`. For asynchronous tests, use <a href="/async/">`assert.async`</a> instead.</p>

When your async test has multiple exit points, call `QUnit.start()` for the corresponding number of <a href="/QUnit.stop/">`QUnit.stop()`</a> increments.

### Example

A test run that does not begin when the page is done loading. This example uses an Asynchronous Module Definition (AMD) loader-style `require` call.

```js
QUnit.config.autostart = false;

require(["test/tests1.js", "test/tests2.js"], function() {
	QUnit.start();
});
```
