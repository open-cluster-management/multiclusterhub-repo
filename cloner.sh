
git clone git@github.com:open-cluster-management/kui-web-terminal-chart.git
helm3 package kui-web-terminal-chart/stable/kui-web-terminal -d multicloudhub/charts

git clone git@github.com:open-cluster-management/search-chart.git
helm3 package search-chart/stable/ibm-search-prod -d multicloudhub/charts

git clone git@github.com:open-cluster-management/application-chart.git
helm3 package application-chart/stable/application-chart -d multicloudhub/charts

git clone git@github.com:open-cluster-management/grc-chart.git
helm3 package grc-chart/stable/grc-chart -d multicloudhub/charts

git clone git@github.com:open-cluster-management/management-ingress-chart.git
helm3 package management-ingress-chart/stable/management-ingress -d multicloudhub/charts

git clone git@github.com:open-cluster-management/rcm-chart.git
helm3 package rcm-chart/stable/rcm -d multicloudhub/charts

git clone git@github.com:open-cluster-management/multicloud-mongodb-chart.git
helm3 package multicloud-mongodb-chart/stable/icp-mongodb -d multicloudhub/charts

git clone git@github.com:open-cluster-management/cert-manager-webhook-chart.git
helm3 package cert-manager-webhook-chart/stable/cert-manager-webhook -d multicloudhub/charts

git clone git@github.com:open-cluster-management/cert-manager-chart.git
helm3 package cert-manager-chart/stable/cert-manager -d multicloudhub/charts

git clone git@github.com:open-cluster-management/configmap-watcher-chart.git
helm3 package configmap-watcher-chart/stable/configmap-watcher -d multicloudhub/charts

curl -L https://charts.bitnami.com/bitnami/nginx-5.1.6.tgz > ./multicloudhub/charts/nginx-5.1.6.tgz

helm3 repo index --url http://multicloudhub-repo:3000/charts ./multicloudhub/charts