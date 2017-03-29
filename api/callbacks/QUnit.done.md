<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="../entries2html.xsl" ?>
<entry type="method" name="QUnit.done">
	<title>QUnit.done()</title>
	<signature>
		<argument name="callback">
			<desc>Callback to execute. Provides a single argument with the following properties:</desc>
			<type name="Function">
				<argument name="details" type="Object"/>
			</type>
			<property name="failed" type="Number">
				<desc>The number of failed assertions</desc>
			</property>
			<property name="passed" type="Number">
				<desc>The number of passed assertions</desc>
			</property>
			<property name="total" type="Number">
				<desc>The total number of assertions</desc>
			</property>
			<property name="runtime" type="Number">
				<desc>The time in milliseconds it took tests to run from start to finish.</desc>
			</property>
		</argument>
	</signature>
	<desc>Register a callback to fire whenever the test suite ends.</desc>
	<example>
		<desc>Register a callback that logs test results to the console.</desc>
		<code><![CDATA[
QUnit.done(function( details ) {
	console.log( "Total: ", details.total, " Failed: ", details.failed, " Passed: ", details.passed, " Runtime: ", details.runtime );
});
]]></code>
	</example>
	<category slug="callbacks"/>
</entry>
