version=nginx-0.24.1

install() {
	kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/$version/deploy/mandatory.yaml
	kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/$version/deploy/provider/cloud-generic.yaml
}

get() {
	kubectl get -n ingress-nginx all $@
}
