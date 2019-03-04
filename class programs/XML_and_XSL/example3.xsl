<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html"/>
<xsl:template match="/">
 <html><head><title>Wonders of the World</title></head>
  <body>
   <h1>Seven Wonders of the Ancient World</h1>
   <table border="1"><tr><th>Wonder Name</th><th>Location</th><th>Height</th></tr>

    <xsl:for-each select="ancient_wonders/wonder">
     <tr>
       <td>
         <strong>
           <xsl:value-of select="name[@language='English']"/>
            </strong><br/>
          <xsl:if test="name[@language!='English']">
            (<em><xsl:value-of select="name[@language!='English']"/></em>)
          </xsl:if>
       </td>
       <td><xsl:value-of select="location"/></td>
       <td><xsl:value-of select="height"/></td>
    </tr>
    </xsl:for-each>

   </table>
 </body></html>
</xsl:template>
</xsl:stylesheet>
