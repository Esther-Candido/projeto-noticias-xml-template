<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="xml" indent="yes"/>

    <xsl:template match="/">

		<!-- Top News Start-->
		<div class="top-news">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-6 tn-left">
						<div class="tn-img">
							<img src="{/rss/channel/item[1]/enclosure/@url}" />
							<div class="tn-content">
								<div class="tn-content-inner">
									<a class="tn-date" href="{/rss/channel/item[1]/link}">
										<i class="far fa-clock"></i>
										<xsl:value-of select="/rss/channel/item[1]/pubDate"></xsl:value-of>
									</a>
									<a class="tn-title" href="{/rss/channel/item[1]/link}">
										<xsl:value-of select="/rss/channel/item[1]/title"></xsl:value-of>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 tn-right">
						<div class="row">
							<div class="col-md-6">
								<div class="tn-img">
									<img src="{/rss/channel/item[2]/enclosure/@url}" />
									<div class="tn-content">
										<div class="tn-content-inner">
											<a class="tn-date" href="{/rss/channel/item[2]/link}">
												<i class="far fa-clock"></i>
												<xsl:value-of select="/rss/channel/item[2]/pubDate"></xsl:value-of>
											</a>
											<a class="tn-title" href="{/rss/channel/item[2]/link}">
												<xsl:value-of select="/rss/channel/item[2]/title"></xsl:value-of>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="tn-img">
									<img src="{/rss/channel/item[3]/enclosure/@url}" />
									<div class="tn-content">
										<div class="tn-content-inner">
											<a class="tn-date" href="{/rss/channel/item[3]/link}">
												<i class="far fa-clock"></i>
												<xsl:value-of select="/rss/channel/item[3]/pubDate"></xsl:value-of>
											</a>
											<a class="tn-title" href="{/rss/channel/item[3]/link}">
												<xsl:value-of select="/rss/channel/item[3]/title"></xsl:value-of>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="tn-img">
									<img src="{/rss/channel/item[4]/enclosure/@url}" />
									<div class="tn-content">
										<div class="tn-content-inner">
											<a class="tn-date" href="{/rss/channel/item[4]/link}">
												<i class="far fa-clock"></i>
												<xsl:value-of select="/rss/channel/item[4]/pubDate"></xsl:value-of>
											</a>
											<a class="tn-title" href="{/rss/channel/item[4]/link}">
												<xsl:value-of select="/rss/channel/item[4]/title"></xsl:value-of>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="tn-img">
									<img src="{/rss/channel/item[5]/enclosure/@url}" />
									<div class="tn-content">
										<div class="tn-content-inner">
											<a class="tn-date" href="{/rss/channel/item[5]/link}">
												<i class="far fa-clock"></i>
												<xsl:value-of select="/rss/channel/item[5]/pubDate"></xsl:value-of>
											</a>
											<a class="tn-title" href="{/rss/channel/item[5]/link}">
												<xsl:value-of select="/rss/channel/item[5]/title"></xsl:value-of>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Top News End-->


		<!-- Category News Start-->
		<!--Desposto-->
				<div class="cat-news">
					<div class="container-fluid">
						<div class="row">
							
							<div class="col-md-6">
								<h2>
									<i class="fas fa-align-justify"></i>Sports
								</h2>
								<div class="row cn-slider">
									
									<xsl:for-each select="/rss/channel/item[category='Desporto']">
									<xsl:if test= "position() &lt; 10">
										
									<div class="col-md-6">
										<div class="cn-img">
											<img src="{enclosure/@url}" />
											<div class="cn-content">
												<div class="cn-content-inner">
													<a class="cn-date" href="{link}">
														<i class="far fa-clock"></i>
														<xsl:value-of select="pubDate"></xsl:value-of>
													</a>
													<a class="cn-title" href="{link}">
														<xsl:value-of select="title"></xsl:value-of>
													</a>
												</div>
											</div>
										</div>
									</div>
										
									</xsl:if>
								</xsl:for-each>
									
								</div>
							</div>
							
							
				<!-- Technology-->
				<div class="col-md-6">
					<h2>
						<i class="fas fa-align-justify"></i>Technology
					</h2>
					<div class="row cn-slider">
				
						<xsl:for-each select="/rss/channel/item[category='Desporto']"> <!--categoria das noticias que vai querer puxar -->
							<xsl:if test= "position() &lt; 4">

								<div class="col-md-6">
									<div class="cn-img">
										<img src="{enclosure/@url}"/>
										<div class="cn-content">
											<div class="cn-content-inner">
												<a class="cn-date" href="{link}">
													<i class="far fa-clock"></i>
													<xsl:value-of select="pubDate"></xsl:value-of>
												</a>
												<a class="cn-title" href="{link}">
													<xsl:value-of select="title"></xsl:value-of>
												</a>
											</div>
										</div>
									</div>
								</div>
						
							</xsl:if>
							</xsl:for-each>
				
					</div>
				</div>
			</div>
		</div>
	</div>

	
		<!-- Category News End-->
		

					

       
    </xsl:template>
</xsl:stylesheet>
