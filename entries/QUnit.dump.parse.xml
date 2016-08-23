<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="../entries2html.xsl" ?>
<entry type="method" name="QUnit.dump.parse">
	<title>QUnit.dump.parse()</title>
	<signature>
		<argument name="data" type="Object">
			<desc>Data structure or Object to parse.</desc>
		</argument>
	</signature>
	<desc>Advanced and extensible data dumping for JavaScript</desc>
	<longdesc>
		<p>This method does string serialization by parsing data structures and objects. It parses DOM elements to a string representation of their outer HTML. By default, nested structures will be displayed up to five levels deep. Anything beyond that is replaced by <code>[object Object]</code> and <code>[object Array]</code> placeholders.</p>
		<p>If you need more or less output, change the value of <code>QUnit.dump.maxDepth</code>, representing how deep the elements should be parsed.</p>
		<p><em>Note: This method used to be in <code>QUnit.jsDump</code>, which was changed to <code>QUnit.dump</code>. The old property will be removed in QUnit 3.0.</em></p>
	</longdesc>
	<example>
		<desc>
			The following example is used on <a href="https://github.com/gruntjs/grunt-contrib-qunit/blob/7568f3ba04a5790b2c92f44da3ce5c7bdc1c7491/phantomjs/bridge.js#L24-L33">grunt-contrib-qunit</a> to send messages from QUnit to PhantomJS.
		</desc>
		<code><![CDATA[
QUnit.log(function( obj ) {

	// Parse some stuff before sending it.
	var actual = QUnit.dump.parse( obj.actual );
	var expected = QUnit.dump.parse( obj.expected );

	// Send it.
	sendMessage( "qunit.log", obj.result, actual, expected, obj.message, obj.source );
});
]]></code>
	</example>
	<example>
		<desc>This example shows the parsed output of a simple JS object with a DOM reference.</desc>
		<code><![CDATA[
var qHeader = document.getElementById( "qunit-header" ),
	parsed = QUnit.dump.parse( qHeader );

console.log( parsed );

// Logs: "<h1 id=\"qunit-header\"></h1>"
]]></code>
	</example>
	<example>
		<desc>Limit output to one or two levels</desc>
		<code><![CDATA[
var input = {
	parts: {
		front: [],
		back: []
	}
};
QUnit.dump.maxDepth = 1;
console.log( QUnit.dump.parse( input ) );
// Logs: { "parts": [object Object] }

QUnit.dump.maxDepth = 2;
console.log( QUnit.dump.parse( input ) );
// Logs: { "parts": { "back": [object Array], "front": [object Array] } }
]]></code>
	</example>
	<category slug="config"/>
</entry>
