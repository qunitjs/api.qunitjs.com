<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="../entries2html.xsl" ?>
<entry type="method" name="QUnit.stack" return="String">
	<title>QUnit.stack()</title>
	<signature>
		<argument name="offset" type="Number" optional="true" default="0">
			<desc>Set the stacktrace line offset.</desc>
		</argument>
	</signature>
	<desc>Returns a single line string representing the stacktrace (call stack)</desc>
	<longdesc>
		<p>This method returns a single line string representing the stacktrace from where it was called. According to its offset argument, <code>QUnit.stack()</code> will return the correspondent line from the call stack.</p>
		<p>The default offset is 0 and will return the current location where it was called.</p>
		<p>Not all <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Error/Stack#Browser_compatibility">browsers support retrieving stracktraces</a>. In those, <code>QUnit.stack()</code> will return <code>undefined</code>.</p>
	</longdesc>
	<example>
		<desc>
			The stacktrace line can be used on custom assertions and reporters. The following example <a href="/QUnit.log/">logs</a> the line of each passing assertion.
		</desc>
		<code><![CDATA[
QUnit.log( function( details ) {
	if ( details.result ) {

		// 5 is the line reference for the assertion method, not the following line.
		console.log( QUnit.stack( 5 ) );
	}
} );

QUnit.test( "foo", function( assert ) {

	// the log callback will report the position of the following line.
	assert.ok( true );
} );
]]></code>
	</example>
	<category slug="config"/>
</entry>
