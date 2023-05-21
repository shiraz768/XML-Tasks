<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0 " xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <style>
        *{
            font-family:sans-serif;
            margin: 0 auto;
        }
        table{
            width: 800px;
        }
        thead{
            background-color:black;
            color:white;
            height:60px;
        }
        tbody{
            background-color: rgb(133, 0, 0);
            color:white;
            text-align:center;
        }
        td:hover{
            background-color:black;
            cursor: pointer;
        }
        img{
            height:250px;
        }
        </style>
            <body>
                <table>

                    <thead>
                        <tr>
                            <th>Name</th>
                              <th>Author Name</th>
                              <th>Edition</th>
                            <th>Price</th>
                            <th>Picture</th>
                        </tr>
                    </thead>

                    <tbody>

                    <xsl:for-each select="Mrgeek/Books">
                     <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="Author"/></td>
                            <td><xsl:value-of select="Edition"/></td>
                            <td><xsl:value-of select="price"/></td>
                            <td><img src="images/{picture}"/></td>
                        </tr>
                    </xsl:for-each>
            
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>