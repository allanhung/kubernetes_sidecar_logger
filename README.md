# This is a log sidecar demo that send logs to Loki with promtail include pod infomation and pod labels

 1. Change Promtail config template locate in `./kustomize/base/kustomization.yaml`
 2. build yaml with kustomize `kustomize build kustomize/base/ > /tmp/logsidecar.yaml`
 3. apply in kubernetes with `kubectl apply -f /tmp/logsidecar.yaml`

# reference
[spark using-sidecar-containers](https://github.com/GoogleCloudPlatform/spark-on-k8s-operator/blob/master/docs/user-guide.md#using-sidecar-containers)
[sidecar-container-with-a-logging-agent](https://kubernetes.io/docs/concepts/cluster-administration/logging/#sidecar-container-with-a-logging-agent)
[downward-api-volume-expose-pod-information](https://kubernetes.io/docs/tasks/inject-data-application/downward-api-volume-expose-pod-information/)
[gomplate](https://github.com/hairyhenderson/gomplate)
[promtail](https://github.com/grafana/loki/tree/master/cmd/promtail)
