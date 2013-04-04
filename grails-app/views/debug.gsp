<!doctype html>
<html>
<head>
<meta name="layout" content="bootstrap" />
<title>OADR2 Debug</title>
<style>
</style>

</head>

<body>
	<div class="indent">
		<div class="row-fluid">
			<aside id="application-status" class="span3">
				<div class="well sidebar-nav">
					<h5>Application Status</h5>
					<ul>
						<li>App version: <g:meta name="app.version" /></li>
						<li>Grails version: <g:meta name="app.grails.version" /></li>
						<li>Groovy version: ${GroovySystem.getVersion()}</li>
						<li>JVM version: ${System.getProperty('java.version')}</li>
						<li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
						<li>Domains: ${grailsApplication.domainClasses.size()}</li>
						<li>Services: ${grailsApplication.serviceClasses.size()}</li>
						<li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
					</ul>
					<h5 class="hello">Installed Plugins</h5>
					<ul>
						<g:each var="plugin"
							in="${applicationContext.getBean('pluginManager').allPlugins}">
							<li>
								${plugin.name} - ${plugin.version}
							</li>
						</g:each>
					</ul>
				</div>
			</aside>

			<section id="main" class="span9">

				<div class="hero-unit">
					<h1>OpenAdr 2.0 Groovy Style</h1>
					</br>
					<p>
						Grails version of the Oadr2-vtn originally built on the Play
						Framework located <a
							href="https://github.com/EnerNOC/oadr2-vtn.git">here.</a>
					</p>
				</div>

				<div class="row-fluid">

					<div class="span4">
						<h2>Controllers</h2>
						<ul class="nav nav-list">
							<g:each var="c"
								in="${grailsApplication.controllerClasses.sort { it.fullName } }">
								<li><g:link controller="${c.logicalPropertyName}">
										${c.naturalName}
									</g:link></li>
							</g:each>
						</ul>
					</div>

					<div class="span4">
						<h2>Install It</h2>
						<p>To install this look &amp; feel into your Grails app you
							will need to:</p>
						<p>
							Add the following plugins to your <em>BuildConfig.groovy</em>:
						</p>

						<p>Copy the following files to your project:</p>
						<pre>src/templates/scaffolding/*
web-app/css/scaffolding.css
grails-app/conf/ScaffoldingResources.groovy
grails-app/taglib/**/*
grails-app/views/index.gsp
grails-app/views/layouts/bootstrap.gsp
grails-app/views/_fields/default/_field.gsp</pre>
					</div>

					<div class="span4">
						<h2>Fork It</h2>
						<p>
							You can download, fork &amp; raise issues on this project on <a
								href="http://github.enernoc.net/yxiang/oadr2-vtn-groovy">GitHub</a>.
						</p>
					</div>

				</div>

			</section>
		</div>
	</div>
</body>
</html>