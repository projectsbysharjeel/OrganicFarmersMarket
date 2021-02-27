<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>
<xsl:template match="/">

<!-- This xsl file is written by Sharjeel Sohail (c3316130) -->
<!-- date: 24/01/2019 -->

<html>
   <head>
      <link rel="stylesheet" type="text/css" href="stylesheet.css" />
      <title>
		Organic farmers markets
      </title>
   </head>
   <body>
	<h1> Organic Farmers Market </h1>
	<hr />
	<xsl:for-each select="farmer_market/farm">
           
	   <h3> <xsl:value-of select="farmname" /> </h3>

	   <xsl:value-of select="mission" /> <br />
	   
	   <div class="fd">
	   <strong>
	   <xsl:text>Farm Description:</xsl:text>
	   </strong>
	   </div>

	   <span>
	   <xsl:value-of select="fdescription" />
	   <xsl:text> Our webpage is given below: </xsl:text> <br />
	   <xsl:value-of select="url" /> <br />
	   <xsl:text>We are located at: </xsl:text>
	   <xsl:value-of select="address" />
	   </span>

	   <ul>
	      <li>
		<xsl:text>Email us at: </xsl:text> <em> <xsl:value-of select="mail" /> </em> <br />
	      </li>
	      <li>
		<xsl:text>You can also contact us on: </xsl:text> <strong><xsl:value-of select="contact" /></strong>
	      </li>
	   </ul>
	   <img alt="logo" width="300" height="300">
		<xsl:attribute name="src">
	   	<xsl:value-of select="farmlogo" />
		</xsl:attribute>
	   </img>
     	   
	</xsl:for-each>
   </body>
</html>
</xsl:template>
</xsl:stylesheet>