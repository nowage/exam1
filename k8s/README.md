
# Usage
```
[root@node1 k8s]# . k8s.sh 
kubectl run --generator=deployment/apps.v1 is DEPRECATED and will be removed in a future version. Use kubectl run --generator=run-pod/v1 or kubectl create instead.
deployment.apps/nginx created
deployment.extensions/nginx scaled
service/nginx exposed
[root@node1 k8s]# kubectl get svc
NAME         TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)        AGE
kubernetes   ClusterIP   10.254.0.1      <none>        443/TCP        15d
nginx        NodePort    10.254.74.254   <none>        80:30104/TCP   21s
```
