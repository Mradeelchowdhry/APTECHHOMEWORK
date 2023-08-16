<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/HNSTATIONERS">
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>
</head>
<body>
    <h1>HNSTATIONERS</h1>
    <table border="1">
        <tr bgcoloer="green">
            <th>id</th>
            <th>productname</th>
            <th>quantity</th>
            <th>priceperunit</th>
            <th>priceperdoz</th>
            <th>instock</th>
            

        </tr>

        <xsl:for-each select="product">

        <xsl:if test="instock = 'yes'">

        <tr>
            <td><xsl:value-of select="id"></xsl:value-of></td>
            <td><xsl:value-of select="productname"></xsl:value-of></td>
            <td><xsl:value-of select="quantity"></xsl:value-of></td>
            <td><xsl:value-of select="priceperunit"></xsl:value-of></td>
            <td><xsl:value-of select="priceperdoz"></xsl:value-of></td>
            <td><xsl:value-of select="instock"></xsl:value-of></td>
        </tr>
    </xsl:if>
</xsl:for-each>
    </table>
</body>
</html>

</xsl:template></xsl:stylesheet>