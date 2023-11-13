<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Référentiel des universités et écoles marocaines</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 20px;
          }

          table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
          }

          th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
          }

          th {
            background-color: #4CAF50;
            color: white;
          }
          .university-info {
            display: flex;
            align-items: center;
            position: relative;
            justify-content: space-between;
          }
          h1  {
            color: #333;
            margin-bottom: 5px;
          }

          h2 {
            color: #555;
            margin-bottom: 5px;
          }

          ul {
            list-style-type: none;
            padding: 0;
          }
          img {
            max-width: 150px; /* Ajustez la largeur de l'image selon vos besoins */
            max-height: 150px; /* Ajustez la hauteur de l'image selon vos besoins */
            
          }
          li {
            margin-bottom: 5px;
          }
        </style>

</head>
<body>
  <table>
    <xsl:for-each select="universites/universite">
      <tr>
        <th colspan="2" bgcolor="#4CAF50">
          <div class="university-info">
            <div>
              <h1><xsl:value-of select="nom"/></h1>
              <p><xsl:value-of select="ville"/></p>
            </div>
            <img src="{image}" alt="Logo de l'université"/>
          </div>
        </th>
      </tr>
      <tr>
        <td>
          <h2>Facultés</h2>
          <ul>
            <xsl:for-each select="facultes/faculte">
              <li><xsl:value-of select="nom"/></li>
            </xsl:for-each>
          </ul>
        </td>
      </tr>
      <tr>
        <td>
          <h2>Ecoles</h2>
          <ul>
            <xsl:for-each select="ecoles/ecole">
              <li><xsl:value-of select="nom"/></li>
            </xsl:for-each>
          </ul>
        </td>
      </tr>
      <tr>
        <td>
          <h2>Instituts</h2>
          <ul>
            <xsl:for-each select="instituts/institut">
              <li><xsl:value-of select="nom"/></li>
            </xsl:for-each>
          </ul>
        </td>
      </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>    