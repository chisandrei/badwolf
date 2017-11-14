baselines
baseline: spec
	<baseline>
	spec for: #common do: [ 
		spec project: 'ZincHTTPComponents' with: [ 
      		spec
            className: 'ConfigurationOfZincHTTPComponents';
            versionString: '2.8.9';
            loads: #('SSO');
            repository: 'http://mc.stfx.eu/ZincHTTPComponents' ].
		spec
			package: 'BadWolf' with: [ spec requires: #('ZincHTTPComponents') ] ]
