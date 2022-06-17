<?xml version="1.0"?>
<xsl:stylesheet xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/Faculty">
<html>
<body>
<h1>List of Selected Faculty List displayed in XML page</h1>
<table border="1">
<tr bgcolor="black">
<th color="white"><font face="arial" size="5" color="white">Faculty Name</font></th>
<th color="white"><font face="arial" size="5" color="white">Age</font></th>
<th color="white"><font face="arial" size="5" color="white">Status</font></th>
</tr>
<xsl:for-each select="FacultyList">
<tr>
<td><font face="arial" size="5"><xsl:value-of select="name"/></font></td>
<td><font face="arial" size="5"><xsl:value-of select="age"/></font></td>
<td><font face="arial" size="5"><xsl:value-of select="status"/></font></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>