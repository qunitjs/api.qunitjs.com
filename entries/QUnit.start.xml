<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="../entries2html.xsl" ?>
<entry type="method" name="QUnit.start">
	<title>QUnit.start()</title>
	<longdesc>
		<p><code>QUnit.start()</code> must be used to start a test run that has <code><a href="/QUnit.config/">QUnit.config</a>.autostart</code> set to <code>false</code>.</p>
		<p class="warning">
			This method was previously used to control async tests on text contexts along with <code>QUnit.stop</code>. For asynchronous tests, use <a href="/async/"><code>assert.async</code></a> instead.
		</p>
		<p>When your async test has multiple exit points, call <code>QUnit.start()</code> for the corresponding number of <a href="/QUnit.stop/"><code>QUnit.stop()</code></a> increments.</p>
	</longdesc>
	<example>
		<desc>A test run that does not begin when the page is done loading. This example uses an Asynchronous Module Definition (AMD) loader-style <code>require</code> call.</desc>
<code><![CDATA[
QUnit.config.autostart = false;

require(["test/tests1.js", "test/tests2.js"], function() {
	QUnit.start();
});
]]></code>
	</example>

	<category slug="async-control"/>
</entry>
