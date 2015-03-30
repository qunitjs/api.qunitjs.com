<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="../entries2html.xsl" ?>
<entry type="method" name="notStrictEqual">
	<title>notStrictEqual()</title>
	<signature>
		<argument name="actual" type="Object">
			<desc>Expression being tested</desc>
		</argument>
		<argument name="expected" type="Object">
			<desc>Known comparison value</desc>
		</argument>
		<argument name="message" type="String" optional="true">
			<desc>A short description of the assertion</desc>
		</argument>
	</signature>
	<desc>
		A strict comparison, checking for inequality.
	</desc>
	<longdesc>
		<p>The <code>notStrictEqual</code> assertion uses the strict inverted comparison operator (<code>!==</code>) to compare the actual and expected arguments. When they aren't equal, the assertion passes; otherwise, it fails. When it fails, both actual and expected values are displayed in the test result, in addition to a given message.</p>
		<p><a href="/equal/"><code>equal()</code></a> can be used to test equality.</p>
		<p><a href="/strictEqual/"><code>strictEqual()</code></a> can be used to test strict equality.</p>
	</longdesc>
	<example>
		<desc>The simplest assertion example:</desc>
<code><![CDATA[
QUnit.test( "a test", function( assert ) {
	assert.notStrictEqual( 1, "1", "String '1' and number 1 have the same value but not the same type" );
});
]]></code>
	</example>
	<category slug="assert"/>
</entry>
