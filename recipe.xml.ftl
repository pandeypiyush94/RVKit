<#--It is a place where all of your files.ftl will transform into a new file with .java/.xml/.kt extension, based on the logics that you have defined, and also the id that you define in template.xml.-->
<?xml version="1.0"?>
<recipe>
    <instantiate from="src/app_package/Activity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${mainActivityClass}.kt" />

    <instantiate from="src/app_package/Adapter.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${itemAdapterClass}.kt" />

    <instantiate from="src/app_package/AbstractModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${adapterModelClass}.kt" />

    <instantiate from="res/layout/activity.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${mainActivityLayout}.xml" />

    <instantiate from="res/layout/item.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${itemLayout}.xml" />

    <open file="${escapeXmlAttribute(resOut)}/layout/${mainActivityLayout}.xml" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${itemLayout}.xml" />
    <open file="${escapeXmlAttribute(srcOut)}/${mainActivityClass}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${itemAdapterClass}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${adapterModelClass}.java" />
</recipe>
