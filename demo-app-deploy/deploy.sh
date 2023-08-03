#! /bin/sh

# deploy Easytrade
echo "Deploying Easytrade....."
kubectl create namespace easytrade

kubectl apply -f ./easytrade/manifests

# deploy Easytravel
echo "Deploying Easytravel...."
kubectl create namespace easytravel

kubectl apply -f ./easytravel/manifests

# deploy Hipstershop
echo "Deploying Hipstershop...."
kubectl create namespace hipstershop

kubectl apply -f ./hipstershop/manifests