module github.com/open-cluster-management/multiclusterhub-repo

go 1.16

require (
	github.com/fsnotify/fsnotify v1.4.9
	helm.sh/helm/v3 v3.6.3
	rsc.io/letsencrypt v0.0.3 // indirect
	sigs.k8s.io/yaml v1.2.0
)

// Resolves CVE-2020-14040
replace golang.org/x/text => golang.org/x/text v0.3.5
