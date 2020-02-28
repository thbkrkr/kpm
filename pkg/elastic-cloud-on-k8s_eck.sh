version=1.0.1

install() {
	curl https://download.elastic.co/downloads/eck/$version/all-in-one.yaml -s | \
    	kubectl apply -f -
}

get() {
	kubectl get -n elastic-system all $@
}
