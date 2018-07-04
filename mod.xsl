<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.user-list">
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-user-list" ox-mod="user-list">
        	<ul>
        		<xsl:for-each select="data/user-ext/i">
        			<li class="user-list">
        				<a href="{LINK/user_detail}">
        				<span class="avatar" style="background-image:url({avatar})"></span>
        				<h4 class="nick"><xsl:value-of select="nick"/>
        					<span class="sex-{sex}"></span>
        				</h4>
        				<p class="slogan"><xsl:value-of select="slogan"/></p>
        				</a>
        			</li>
        		</xsl:for-each>
        	</ul>
        </div>
    </xsl:template>
</xsl:stylesheet>
