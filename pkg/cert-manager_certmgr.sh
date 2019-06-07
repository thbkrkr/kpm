version=v0.8.0-beta.0

install() {
	if [[ $(kubectl get namespace cert-manager &> /dev/null; echo $?) == "1" ]]; then
		kubectl create namespace cert-manager
		kubectl label namespace cert-manager certmanager.k8s.io/disable-validation=true
	fi

	kubectl apply -f https://github.com/jetstack/cert-manager/releases/download/$version/cert-manager.yaml
}

get() {
	kubectl get -n cert-manager all $@
}