kubectl delete servicemonitor prometheus-operator-kube-etcd prometheus-operator-operator -nlma

kubectl delete PodSecurityPolicy prometheus-operator-operator

kubectl delete sa -n lma prometheus-operator-operator

kubectl delete service -n lma prometheus-operator-operator

kubectl delete deployments.apps -n lma prometheus-operator-operator

kubectl delete mutatingwebhookconfigurations.admissionregistration.k8s.io prometheus-operator-admission

kubectl delete clusterrole prometheus-operator-operator

kubectl delete clusterrole prometheus-operator-operator-psp

kubectl delete validatingwebhookconfigurations prometheus-operator-admission

#kubectl delete crd [alertmanagers.monitoring.coreos.com](http://alertmanagers.monitoring.coreos.com/)

#kubectl delete crd [podmonitors.monitoring.coreos.com](http://podmonitors.monitoring.coreos.com/)

#kubectl delete crd [prometheuses.monitoring.coreos.com](http://prometheuses.monitoring.coreos.com/)

#kubectl delete crd [prometheusrules.monitoring.coreos.com](http://prometheusrules.monitoring.coreos.com/)

#kubectl delete crd [servicemonitors.monitoring.coreos.com](http://servicemonitors.monitoring.coreos.com/)

#kubectl delete crd [thanosrulers.monitoring.coreos.com](http://thanosrulers.monitoring.coreos.com/)

kubectl delete svc prometheus-operator-kube-etcd prometheus-operator-kubelet -nkube-system

kubectl delete clusterrolebinding prometheus-operator-operator

kubectl delete clusterrolebinding prometheus-operator-operator-psp
