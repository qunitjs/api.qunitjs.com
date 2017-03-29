<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="../entries2html.xsl" ?>
<entry type="method" name="QUnit.on">
	<title>QUnit.on()</title>
	<signature>
		<argument name="eventName" type="String">
			<desc>The name of the event for which to execute the provided callback.</desc>
		</argument>
		<argument name="callback">
			<desc>Callback to execute. Receives a single argument representing the data for the event.</desc>
			<type name="Function">
				<argument name="data" type="Object"/>
			</type>
		</argument>
	</signature>
	<desc>Register a callback to fire whenever the specified event is emitted. Conforms to the <a href="https://github.com/js-reporters/js-reporters" target="_blank">js-reporters standard</a>.</desc>
	<longdesc>
		<p>
			<code>QUnit.on()</code> allows you to listen for events related to the test suite's execution. Available event names and corresponding data payloads are defined in the <a href="https://github.com/js-reporters/js-reporters" target="_blank">js-reporters specification</a>.
		</p>
	</longdesc>
	<example>
		<desc>Printing results of a test suite.</desc>
		<code><![CDATA[
QUnit.on( "runEnd", function( data ) {
	console.log( "Passed: " + data.testCounts.passed );
	console.log( "Failed: " + data.testCounts.failed );
	console.log( "Skipped: " + data.testCounts.skipped );
	console.log( "Todo: " + data.testCounts.todo );
	console.log( "Total: " + data.testCounts.total );
} );
]]></code>
	</example>
	<category slug="callbacks"/>
</entry>
