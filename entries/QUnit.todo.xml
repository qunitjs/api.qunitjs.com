<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="../entries2html.xsl" ?>
<entry type="method" name="QUnit.todo">
	<title>QUnit.todo()</title>
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
		Adds a test which expects at least one failing assertion during its run.
	</desc>
	<longdesc>
		<p>Use this method to test a unit of code which is still under development (in a "todo" state). The test will pass as long as one failing assertion is present. If all assertions pass, then the test will fail signaling that <code>QUnit.todo</code> should be replaced by <code>QUnit.test</code>.</p>
	</longdesc>
	<example>
		<desc>How to use <code>QUnit.todo</code> to denote code that is still under development.</desc>
<code><![CDATA[
QUnit.module( "robot", {
	beforeEach: function() {
		this.robot = new Robot();
	}
});

// fireLazer hasn't been properly implemented yet, so this is a todo test
QUnit.todo( "fireLazer returns the correct value", function( assert ) {
	var result = this.robot.fireLazer(); // Currently returns undefined
	assert.equal( result, "I'm firing my lazer!" );
});
]]></code>
	</example>

	<category slug="test"/>
</entry>
