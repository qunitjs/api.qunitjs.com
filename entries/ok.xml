<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="../entries2html.xsl" ?>
<entry type="method" name="ok">
	<title>ok()</title>
	<signature>
		<argument name="state" type="Expression">
			<desc>Expression being tested</desc>
		</argument>
		<argument name="message" type="String" optional="true">
			<desc>A short description of the assertion</desc>
		</argument>
	</signature>
	<desc>
		A boolean check, equivalent to CommonJS's assert.ok() and JUnit's assertTrue(). Passes if the first argument is truthy.
	</desc>
	<longdesc>
		<p>The most basic assertion in QUnit, <code>ok()</code> requires just one argument. If the argument evaluates to true, the assertion passes; otherwise, it fails. If a second message argument is provided, it will be displayed in place of the result.</p>
	</longdesc>
	<example height="250">

<code><![CDATA[
QUnit.test( "ok test", function( assert ) {
	assert.ok( true, "true succeeds" );
	assert.ok( "non-empty", "non-empty string succeeds" );

	assert.ok( false, "false fails" );
	assert.ok( 0, "0 fails" );
	assert.ok( NaN, "NaN fails" );
	assert.ok( "", "empty string fails" );
	assert.ok( null, "null fails" );
	assert.ok( undefined, "undefined fails" );
});
]]></code>
	</example>

	<category slug="assert"/>
</entry>
