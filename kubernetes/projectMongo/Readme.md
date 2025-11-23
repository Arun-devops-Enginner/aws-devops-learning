# 🗂️ MongoDB + Mongo Express on Kubernetes

<img src="https://img.shields.io/badge/Kubernetes-Deployed-blue?logo=kubernetes&style=for-the-badge" />
<img src="https://img.shields.io/badge/MongoDB-Database-success?logo=mongodb&style=for-the-badge" />
<img src="https://img.shields.io/badge/Mongo Express-UI-orange?style=for-the-badge" />

This project deploys **MongoDB** and **Mongo Express** to a Kubernetes cluster.  
MongoDB serves as the backend database, and Mongo Express provides a **web UI** for managing collections, databases, and records.
---

## 🛠️ Prerequisites

Before running the project, make sure you have:

| Requirement | Status |
|------------|--------|
| Kubernetes Cluster | ✔ Minikube / Kind / Docker Desktop / EKS |
| Kubectl Installed | ✔ |
| (Optional) Minikube for local service access | ✔ |

---

## 📦 Files Included

| File Name | Description |
|-----------|------------|
| `mongodb.yaml` | Complete deployment and Services in single Yaml file |
| `mongodb-express.yaml` | Complete deployment and Services in a single Yaml file |
| `mongo-secret.yaml` | file including Secret|
| `configmap.yaml` | Complete file include ConfigMap |

---

## 🚀 Deploy to Kubernetes

Apply the configuration: 

kubectl apply -f mongo-secret.yaml
kubectl apply -f configmap.yaml
kubectl apply -f mongodb.yaml
kubectl apply -f mongo-expree.yaml
kubectl get pods                     # for pods status
kubectl get srv                      # for service
kubectl get svc mongo-express-service
 http://<node-ip>:<node-port>  #use in browser and check

 in local minikube in linux wsl need run this command to test in browser
 kubectl port-forward svc/mongo-express-service 8081:8081
and the use in browser
http://localhost:8080
---
 🔍 Credentials
Component	Username	Password
MongoDB	root (from secret)	defined in secret
Mongo Express Login	admin	pass (unless modified)
---
🧪 Testing MongoDB Connection
From Mongo Express Pod:

kubectl exec -it deploy/mongo-express -- sh
nc -zv mongodb-service 27017
Expected output: 
27017 open
---
☁ Deploying to AWS EKS 
1️⃣ Create EKS Cluster
eksctl create cluster --name mongo-cluster --nodes 2

2️⃣ Apply all manifests yaml that step shownin "## 🚀 Deploy to Kubernetes":

kubectl apply -f .

3️⃣ Expose Using LoadBalancer

Modify mongo-express-service.yaml:

type: LoadBalancer


Apply:

kubectl apply -f mongo-express-service.yaml


Get external IP:

kubectl get svc


Access:

http://<aws-loadbalancer-public-ip>
---
🧹 Cleanup
kubectl delete -f .
---
🧱 Kubernetes Architecture
 ┌──────────────────────────┐         ┌───────────────────────────┐
 │     MongoDB Deployment   │<------> │ MongoDB Service (ClusterIP)│
 │        (Pod)             │         └───────────────────────────┘
 │   🔐 Reads Secret + ConfigMap │
 └───────────────▲──────────┘
                 │
                 │
 ┌───────────────┴─────────────────────────┐
 │      Mongo Express Deployment (Pod)      │
 │     🌐 Access DB through Service         │
 └────────────────┬─────────────────────────┘
                  │
                  ▼
 ┌───────────────────────────────────────────────┐
 │    Mongo Express Service (NodePort/Ingress)   │
 │   👉 Accessible in browser                    │
 └───────────────────────────────────────────────┘
---

+----------------------+ +-----------------------+
| MongoDB Pod | <----> | Mongo Express Pod |
| | | (Browser UI Access) |
+----------+-----------+ +-----------+-----------+
| |
+--------------- Service ----------+
---

❤️ Support

If this project helped you, please ⭐ the My repo!
Your support motivates more DevOps projects.