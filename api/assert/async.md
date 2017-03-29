<?xml version="1.0"?>
<?xml-stylesheet type="text/xsl" href="../entries2html.xsl" ?>
<entry type="method" name="async">
  <title>async()</title>
  <signature>
    <argument name="acceptCallCount" type="Number" optional="true" default="1">
      <desc>Number of expected callbacks before the test is done.</desc>
    </argument>
  </signature>
  <desc>
    Instruct QUnit to wait for an asynchronous operation.
  </desc>
  <longdesc>
    <p>The callback returned from <code>assert.async()</code> will throw an Error if it is invoked more than once (or more often than the accepted call count, if provided).</p>
    <p>This replaces functionality previously provided by <a href="/QUnit.stop/"><code>QUnit.stop()</code></a> and <a href="/QUnit.start/"><code>QUnit.start()</code></a>.</p>
  </longdesc>
  <example height="250">
  <desc>Tell QUnit to wait for the <code>done()</code> call inside the timeout.</desc>
<code><![CDATA[
QUnit.test( "assert.async() test", function( assert ) {
  var done = assert.async();
  var input = $( "#test-input" ).focus();
  setTimeout(function() {
    assert.equal( document.activeElement, input[0], "Input was focused" );
    done();
  });
});
]]></code>
  </example>
  <example height="250">
  <desc>Call <code>assert.async()</code> for each operation. Each <code>done</code> callback can be called at most once.</desc>
<code><![CDATA[
QUnit.test( "two async calls", function( assert ) {
  assert.expect( 2 );

  var done1 = assert.async();
  var done2 = assert.async();
  setTimeout(function() {
    assert.ok( true, "test resumed from async operation 1" );
    done1();
  }, 500 );
  setTimeout(function() {
    assert.ok( true, "test resumed from async operation 2" );
    done2();
  }, 150);
});
]]></code>
  </example>
    <example height="250">
  <desc>Set up an async test three exit points. Each <code>done()</code> call adds up to the <code>acceptCallCount</code>. After three calls, the test is done.</desc>
<code><![CDATA[
QUnit.test( "multiple call done()", function( assert ) {
  assert.expect( 3 );
  var done = assert.async( 3 );

  setTimeout(function() {
    assert.ok( true, "first call done." );
    done();
  }, 500 );

  setTimeout(function() {
    assert.ok( true, "second call done." );
    done();
  }, 500 );

  setTimeout(function() {
    assert.ok( true, "third call done." );
    done();
  }, 500 );
});
]]></code>
  </example>
  <category slug="assert"/>
  <category slug="async-control"/>
</entry>
