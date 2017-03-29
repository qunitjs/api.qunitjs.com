<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="../entries2html.xsl" ?>
<entry type="method" name="QUnit.testDone">
	<title>QUnit.testDone()</title>
	<signature>
		<argument name="callback">
			<desc>Callback to execute. Provides a single argument with the following properties:</desc>
			<type name="Function">
				<argument name="details" type="Object"/>
			</type>
			<property name="name" type="String">
				<desc>Name of the current test</desc>
			</property>
			<property name="module" type="String">
				<desc>Name of the current module</desc>
			</property>
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
				<desc>The total runtime in millseconds of the test, including beforeEach and afterEach</desc>
			</property>
			<property name="skipped" type="Boolean">
				<desc>Indicates whether or not the current test was skipped</desc>
			</property>
		</argument>
	</signature>
	<desc>Register a callback to fire whenever a test ends.</desc>
	<example>
		<desc>Register a callback that logs results of a single test</desc>
		<code><![CDATA[
QUnit.testDone( function( details ) {
	var result = {
		"Module name": details.module,
		"Test name": details.name,
		"Assertions": {
			"Total": details.total,
			"Passed": details.passed,
			"Failed": details.failed
		},
		"Skipped": details.skipped,
		"Runtime": details.runtime
	};

	console.log( JSON.stringify( result, null, 2 ) );
} );
]]></code>
	</example>
	<category slug="callbacks"/>
</entry>
