<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="3.0">
  <xsl:output method="html" indent="yes"/>
  <xsl:template match="/">
    <html>
      <head>
        <title>Catalog of Vintage Video Games </title>
      </head>
      <body>
        <h1>Catalog of Vintage Video Games</h1>
        <xsl:for-each select="video_games/game">
          <h2>
            <xsl:value-of select="name"/>
          </h2>
          <p>
            <xsl:value-of select="description"/>
          </p>
          <span> </span>
          <p>
            <xsl:text>Platform:</xsl:text>
            <xsl:value-of select="platform"/></p>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
