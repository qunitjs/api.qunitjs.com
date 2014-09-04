<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="../entries2html.xsl" ?>
<entry type="method" name="QUnit.moduleDone">
	<title>QUnit.moduleDone()</title>
	<signature>
		<argument name="callback">
			<desc>Callback to execute. Provides a single argument with the following properties:</desc>
			<type name="Function">
				<argument name="details" type="Object"/>
			</type>
			<property name="name" type="String">
				<desc>Name of this module</desc>
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
				<desc>The total runtime in millseconds of this module</desc>
			</property>
		</argument>
	</signature>
	<desc>Register a callback to fire whenever a module ends.</desc>
	<example>
		<desc>Register a callback that logs the module results</desc>
		<code><![CDATA[
QUnit.moduleDone(function( details ) {
	console.log( "Finished running: ", details.name, "Failed/total: ", details.failed, details.total );
});
]]></code>
	</example>
	<category slug="callbacks"/>
</entry>
