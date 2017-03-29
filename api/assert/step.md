<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="../entries2html.xsl" ?>
<entry type="method" name="step">
	<title>step()</title>
	<signature>
		<argument name="message" type="String">
			<desc>Message to display for the step</desc>
		</argument>
	</signature>
	<desc>
		A marker for progress in a given test.
	</desc>
	<longdesc>
		<p>The <code>step()</code> assertion registers a passing assertion with a provided message. This makes it easy to check that specific portions of code are being executed, especially in asynchronous test cases and when used with <code>verifySteps()</code>. A step will always pass unless a message is not provided.</p>
	</longdesc>
	<example>

<code><![CDATA[
QUnit.test( "step test", function( assert ) {
	assert.expect( 1 );
	obj.hook = function() {
		assert.step('Hook is called!');
	};
	obj.invokeHookIndirectly();
});
]]></code>
	</example>

	<category slug="assert"/>
</entry>
