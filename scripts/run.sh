set -euxo

input="../data/WB.KeyFamily.xml"
structure="../data/WB.KeyFamily.xml"
output="${input%.xml}.rdf"

# -t -tree:linked -ext:on
xslt -l -s:$input -xsl:generic.xsl -o:$output xmlDocument=$input pathToGenericStructure=$structure agencyURI=https://data.loqu.dev/WB/
