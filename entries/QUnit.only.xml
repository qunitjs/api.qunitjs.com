<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="../entries2html.xsl" ?>
<entry type="method" name="QUnit.only">
	<title>QUnit.only()</title>
	<signature>
		<argument name="name" type="String">
			<desc>Title of unit being tested</desc>
		</argument>
		<argument name="callback">
			<desc>Function to close over assertions</desc>
			<type name="Function">
				<argument name="assert" type="Assert"></argument>
			</type>
		</argument>
	</signature>
	<desc>
		Adds a test to exclusively run, preventing all other tests from running.
	</desc>
	<longdesc>
		<p>Use this method to focus your test suite on a specific test. <code>QUnit.only</code> will cause any other tests in your suite to be ignored.</p>
		<p>Note, that if more than one <code>QUnit.only</code> is present only the first instance will run.</p>
		<p>This is an alternative to filtering tests to run in the HTML reporter. It is especially useful when you use a console reporter or in a codebase with a large set of long running tests.</p>
	</longdesc>
	<example>
		<desc>How to use <code>QUnit.only</code> to filter your test suite.</desc>
<code><![CDATA[
QUnit.module( "robot", {
	beforeEach: function() {
		this.robot = new Robot();
	}
});

QUnit.test( "say", function( assert ) {
	assert.ok( false, "I'm not quite ready yet" );
});

QUnit.test( "stomp", function( assert ) {
	assert.ok( false, "I'm not quite ready yet" );
});

// You're currently working on the laser feature, so we run only this test
QUnit.only( "laser", function( assert ) {
	assert.ok( this.robot.laser() );
});
]]></code>
	</example>

	<category slug="test"/>
</entry>
