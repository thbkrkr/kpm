# kpm

```bash
> kpm help
Usage: kpm COMMAND [arg...]

(Another) Kubernetes Package Manager \o/.

Commands:
  l|list            List available packages
  i|install         Install a package
  g|get             Show package details


```

```bash                                                   
> kpm l
certmgr     cert-manager
eck         elastic-cloud-on-k8s
nx-ing-ctl  nginx-ingress-controller

```

```bash
> kpm i eck
customresourcedefinition.apiextensions.k8s.io/apmservers.apm.k8s.elastic.co configured
customresourcedefinition.apiextensions.k8s.io/clusterlicenses.elasticsearch.k8s.elastic.co configured
customresourcedefinition.apiextensions.k8s.io/elasticsearches.elasticsearch.k8s.elastic.co configured
customresourcedefinition.apiextensions.k8s.io/enterpriselicenses.elasticsearch.k8s.elastic.co configured
customresourcedefinition.apiextensions.k8s.io/remoteclusters.elasticsearch.k8s.elastic.co configured
customresourcedefinition.apiextensions.k8s.io/trustrelationships.elasticsearch.k8s.elastic.co configured
customresourcedefinition.apiextensions.k8s.io/users.elasticsearch.k8s.elastic.co configured
customresourcedefinition.apiextensions.k8s.io/kibanas.kibana.k8s.elastic.co configured
clusterrole.rbac.authorization.k8s.io/elastic-operator unchanged
clusterrolebinding.rbac.authorization.k8s.io/elastic-operator unchanged
namespace/elastic-system created
statefulset.apps/elastic-operator created
secret/webhook-server-secret created
serviceaccount/elastic-operator created
```

```bash
> kpm g eck
NAME                     READY   STATUS    RESTARTS   AGE
pod/elastic-operator-0   1/1     Running   0          11s

NAME                              TYPE        CLUSTER-IP     EXTERNAL-IP   PORT(S)   AGE
service/elastic-webhook-service   ClusterIP   10.11.252.50   <none>        443/TCP   2s

NAME                                READY   AGE
statefulset.apps/elastic-operator   1/1     11s
```