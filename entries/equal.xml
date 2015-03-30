<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="../entries2html.xsl" ?>
<entry type="method" name="equal">
	<title>equal()</title>
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
		A non-strict comparison, roughly equivalent to JUnit's <code>assertEquals</code>.
	</desc>
	<longdesc>
		<p>The <code>equal</code> assertion uses the simple comparison operator (<code>==</code>) to compare the actual and expected arguments. When they are equal, the assertion passes; otherwise, it fails. When it fails, both actual and expected values are displayed in the test result, in addition to a given message.</p>
		<p><a href="/notEqual/"><code>notEqual()</code></a> can be used to explicitly test inequality.</p>
		<p><a href="/strictEqual/"><code>strictEqual()</code></a> can be used to test strict equality.</p>
	</longdesc>
	<example>
		<desc>The simplest assertion example:</desc>
<code><![CDATA[
QUnit.test( "a test", function( assert ) {
	assert.equal( 1, "1", "String '1' and number 1 have the same value" );
});
]]></code>
	</example>
	<example>
		<desc>A slightly more thorough set of assertions:</desc>
<code><![CDATA[
	QUnit.test( "equal test", function( assert ) {
		assert.equal( 0, 0, "Zero, Zero; equal succeeds" );
		assert.equal( "", 0, "Empty, Zero; equal succeeds" );
		assert.equal( "", "", "Empty, Empty; equal succeeds" );

		assert.equal( "three", 3, "Three, 3; equal fails" );
		assert.equal( null, false, "null, false; equal fails" );
	});
]]></code>
	</example>
	<category slug="assert"/>
</entry>
