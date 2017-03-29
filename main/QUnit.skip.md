<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="../entries2html.xsl" ?>
<entry type="method" name="QUnit.skip">
	<title>QUnit.skip()</title>
	<signature>
		<argument name="name" type="String">
			<desc>Title of unit being tested</desc>
		</argument>
	</signature>
	<desc>
		Adds a test like object to be skipped
	</desc>
	<longdesc>
		<p>Use this method to replace <a href="/QUnit.test/"><code>QUnit.test()</code></a> instead of commenting out entire tests.</p>
		<p>This test's prototype will be listed on the suite as a skipped test, ignoring the callback argument and the respective global and module's hooks.</p>
	</longdesc>
	<example>
		<desc>How to use <code>skip</code> as a placeholder for future or temporarily broken tests.</desc>
<code><![CDATA[
QUnit.module( "robot", {
	beforeEach: function() {
		this.robot = new Robot();
	}
});

QUnit.test( "say", function( assert ) {
	assert.strictEqual( this.robot.say(), "Exterminate!" );
});

// Robot doesn't have a laser method, yet, skip this test
// Will show up as skipped in the results
QUnit.skip( "laser", function( assert ) {
	assert.ok( this.robot.laser() );
});
]]></code>
	</example>

	<category slug="test"/>
</entry>
