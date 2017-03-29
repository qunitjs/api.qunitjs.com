<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="../entries2html.xsl" ?>
<entry type="method" name="verifySteps">
	<title>verifySteps()</title>
	<signature>
		<argument name="steps" type="Array">
			<desc>Array of strings representing steps to verify</desc>
		</argument>
		<argument name="message" type="String" optional="true">
			<desc>A short description of the assertion</desc>
		</argument>
	</signature>
	<desc>
		A helper assertion to verify the order and number of steps in a test.
	</desc>
	<longdesc>
		<p>The <code>verifySteps()</code> assertion compares a given array of string values (representing steps) and compares them with the order and values of previous <code>step()</code> calls. This assertion is helpful for verifying the order of execution for asynchronous flows.</p>
	</longdesc>
	<example>

<code><![CDATA[
QUnit.test( "step test", function( assert ) {
	obj.start = function() {
		assert.step('start');
	};
	obj.middle = function() {
		assert.step('middle');
	};
	obj.end = function() {
		assert.step('end');
	};

	return obj.process().then(function() {
		assert.verifySteps(['start', 'middle', 'end']);
	});
});
]]></code>
	</example>

	<category slug="assert"/>
</entry>
