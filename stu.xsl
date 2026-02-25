<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
    <title>University Users</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: center;
        }
        th {
            background-color: lightgray;
        }
    </style>
</head>

<body>
    <h2 align="center">University Users Information</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Type</th>
            <th>Department</th>
            <th>Email</th>
            <th>Phone</th>
        </tr>

        <xsl:for-each select="University/User">
            <tr>
                <td><xsl:value-of select="ID"/></td>
                <td><xsl:value-of select="Name"/></td>
                <td><xsl:value-of select="@type"/></td>
                <td><xsl:value-of select="Department"/></td>
                <td><xsl:value-of select="Email"/></td>
                <td><xsl:value-of select="Phone"/></td>
            </tr>
        </xsl:for-each>

    </table>
</body>
</html>

</xsl:template>
</xsl:stylesheet>