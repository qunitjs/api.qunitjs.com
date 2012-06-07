<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:output method="html" omit-xml-declaration="yes"/>

<xsl:template match="/">
<script>
	{
		"title": "<xsl:value-of select="//entry/@name" />",
		"termSlugs": {
			"category": [
				<xsl:for-each select="//entry/category"><xsl:if test="position() &gt; 1"><xsl:text>,</xsl:text></xsl:if>"<xsl:value-of select="@slug"/>"</xsl:for-each>
			]
		}
	}
</script>
	<xsl:for-each select="//entry">
		<xsl:variable name="number-examples" select="count(example)"/>
		<article>
			<xsl:copy-of select="desc/node()"/>
			<nav>
				<ul>
					<li>
						<a href="#overview">Overview</a>
					</li>
					<li>
						<a href="#examples">Examples</a>
					</li>
				</ul>
			</nav>
			<section id="overview">
				<header>
					<h2 class="underline">Overview</h2>
				</header>
				<p>
					<xsl:copy-of select="longdesc/node()"/>
				</p>
			</section>
			<section id="examples">
				<header>
					<h2 class="underline">Example<xsl:if test="$number-examples &gt; 1">s</xsl:if></h2>
				</header>
				<xsl:for-each select="example">
					<h4>
						<xsl:if test="$number-examples &gt; 1">Example: </xsl:if>
						<span class="desc">
							<xsl:value-of select="desc"/>
						</span>
					</h4>
					<pre>
						<code data-linenum="true"><xsl:choose><xsl:when test="html"><xsl:attribute name="class">example demo-code</xsl:attribute></xsl:when><xsl:otherwise><xsl:attribute name="class">example</xsl:attribute></xsl:otherwise></xsl:choose>&lt;!doctype html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;meta charset="utf-8"&gt;
&lt;title&gt;<xsl:value-of select="desc"/>&lt;/title&gt;
&lt;link rel="stylesheet" href="qunit.css"&gt;<xsl:if test="css">
&lt;style&gt;<xsl:copy-of select="css/text()"/>  &lt;/style&gt;</xsl:if>
&lt;script src="qunitjs.js"&gt;&lt;/script&gt;
&lt;script&gt;<xsl:copy-of select="code/text()"/>&lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;div id="qunit"&gt;&lt;/div&gt;
&lt;div id="qunit-fixture"&gt;
	<xsl:copy-of select="html/text()"/>
&lt;/div&gt;
&lt;/body&gt;
&lt;/html&gt;
</code>
					</pre>
					<xsl:if test="html">
						<h4>Demo:</h4>
						<div>
							<xsl:choose>
								<xsl:when test="html">
									<xsl:attribute name="class">demo code-demo</xsl:attribute>
								</xsl:when>
								<xsl:otherwise>
									<xsl:attribute name="class">demo</xsl:attribute>
								</xsl:otherwise>
							</xsl:choose>
						</div>
					</xsl:if>
				</xsl:for-each>
			</section>
		</article>
	</xsl:for-each>
</xsl:template>
<!-- arguments -->
<xsl:template name="arguments">
	<xsl:if test="argument">
		<xsl:text> </xsl:text>
		<ul>
			<xsl:apply-templates select="argument"/>
		</ul>
	</xsl:if>
</xsl:template>
<!-- TODO consider optional arguments -->
<xsl:template match="argument">
	<li>
		<xsl:value-of select="@name"/>
		<xsl:text>: </xsl:text>
		<xsl:value-of select="@type"/>
		<xsl:if test="not(@null)">
			<xsl:if test="desc">
				<xsl:text>, </xsl:text>
				<xsl:value-of select="desc"/>
			</xsl:if>
			<ul>
				<xsl:apply-templates select="property"/>
			</ul>
		</xsl:if>
	</li>
</xsl:template>
<!-- argument properties -->
<xsl:template match="argument/property">
	<li>
		<xsl:value-of select="@name"/>
		<xsl:text>: </xsl:text>
		<xsl:value-of select="@type"/>
		<xsl:if test="desc">
			<xsl:text>, </xsl:text>
			<xsl:value-of select="desc"/>
		</xsl:if>
	</li>
</xsl:template>

</xsl:stylesheet>
