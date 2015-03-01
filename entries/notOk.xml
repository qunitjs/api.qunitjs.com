<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="../entries2html.xsl" ?>
<entry type="method" name="notOk">
	<title>notOk()</title>
	<signature>
		<argument name="state" type="Expression">
			<desc>Expression being tested</desc>
		</argument>
		<argument name="message" type="String" optional="true">
			<desc>A short description of the assertion</desc>
		</argument>
	</signature>
	<desc>
		A boolean check, inverse of ok() and CommonJS's assert.ok(), and equivalent to JUnit's assertFalse(). Passes if the first argument is falsy.
	</desc>
	<longdesc>
		<p><code>notOk()</code> requires just one argument. If the argument evaluates to false, the assertion passes; otherwise, it fails. If a second message argument is provided, it will be displayed in place of the result.</p>
	</longdesc>
	<example height="250">

<code><![CDATA[
QUnit.test( "notOk test", function( assert ) {
	assert.notOk( false, "false succeeds" );
	assert.notOk( "", "empty string succeeds" );
	assert.notOk( NaN, "NaN succeeds" );
	assert.notOk( null, "null succeeds" );
	assert.notOk( undefined, "undefined succeeds" );

	assert.notOk( true, "true fails" );
	assert.notOk( 1, "1 fails" );
	assert.notOk( "not-empty", "not-empty string fails" );
});
]]></code>
	</example>

	<category slug="assert"/>
</entry>
