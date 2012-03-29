<?xml version="1.0" encoding="utf-8"?><!-- DWXMLSource="resume.xml" -->
<!DOCTYPE xsl:stylesheet  [
	<!ENTITY nbsp   "&#160;">
	<!ENTITY copy   "&#169;">
	<!ENTITY reg    "&#174;">
	<!ENTITY trade  "&#8482;">
	<!ENTITY mdash  "&#8212;">
	<!ENTITY ldquo  "&#8220;">
	<!ENTITY rdquo  "&#8221;"> 
	<!ENTITY pound  "&#163;">
	<!ENTITY yen    "&#165;">
	<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Resume</title>
<link rel="stylesheet" type="text/css" href="myStyles.css"/>
</head>

<body>
<div id="container">
<h1><xsl:value-of select="resume/name"/></h1>
 <xsl:for-each select="resume/contactinfo/contact">
   		<strong><xsl:value-of select="@type" /></strong>:
     <xsl:value-of select="." /><br />
 </xsl:for-each>
<h3>Education</h3>
<xsl:for-each select="resume/education/degree">
	<xsl:value-of select="."/><br />
 </xsl:for-each>
	   <h3>Key Skills</h3>
     <xsl:for-each select="resume/skills">
            <h4>Software:</h4><p><xsl:value-of select="software" /></p>
            <h4>Internet Technologies:</h4> <p><xsl:value-of select="technologies" /></p>
            <h4>Programming Languages:</h4>  <p><xsl:value-of select="proglangs" /></p>
      </xsl:for-each>
      <h3>Professional Experience</h3>
      <xsl:for-each select="resume/profexperiences/experience">
     		<p style="font-weight:bold"> <span style="text-align:left"> <xsl:value-of select="date" /></span><span style="margin-left:190px"> <xsl:value-of select="company" /></span><br /></p>
      <p> <xsl:value-of select="title" /> </p>
           <ul> <xsl:for-each select="duties/duty">
            	<li><xsl:value-of select="." /></li>
            </xsl:for-each></ul>
       </xsl:for-each>
    </div><!--end of  container div-->
</body>
</html>
</xsl:template>
</xsl:stylesheet>