
kubectl run nginx --image=nowage/nginx --port=80
kubectl scale deploy nginx --replicas=20
kubectl expose deploy/nginx --type="NodePort" --port 80   
