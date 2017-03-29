<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="../entries2html.xsl" ?>
<entry type="method" name="QUnit.begin">
	<title>QUnit.begin()</title>
	<signature>
		<argument name="callback">
			<desc>Callback to execute. Provides a single argument with the following property:</desc>
			<type name="Function">
				<argument name="details" type="Object"/>
			</type>
			<property name="totalTests" type="Number">
				<desc>The number of total tests in the test suite</desc>
			</property>
		</argument>
	</signature>
	<desc>Register a callback to fire whenever the test suite begins.</desc>
	<longdesc>
		<p>
			<code>QUnit.begin()</code> is called once before running any tests.
		</p>
	</longdesc>
	<example>
		<desc>Get total amount of tests.</desc>
		<code><![CDATA[
QUnit.begin(function( details ) {
	console.log( "Test amount:", details.totalTests );
});
]]></code>
	</example>
	<category slug="callbacks"/>
</entry>
