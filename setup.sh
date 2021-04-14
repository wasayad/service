#minikube start

eval $(minikube -p minikube docker-env)
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"
kubectl create -f srcs/metallb.yaml
#docker build -t service_ftps srcs/ftps
#docker build -t service_grafana srcs/grafana
#docker build -t service_influxdb srcs/influxdb
#docker build -t service_mysql srcs/mysql
docker build -t service_nginx srcs/nginx
#docker build -t service_phpmyadmin srcs/phpmyadmin
#docker build -t service_wordpress srcs/wordpress

#kubectl delete -f srcs/ftps/ftps.yaml
#kubectl delete -f srcs/grafana/grafana.yaml
#kubectl delete -f srcs/influxdb/influxdb.yaml
#kubectl delete -f srcs/mysql/mysql.yaml
kubectl delete -f srcs/nginx/nginx.yaml
#kubectl delete -f srcs/phpmyadmin/phpmyadmin.yaml
#kubectl delete -f srcs/wordpress/wordpress.yaml

#kubectl create -f srcs/ftps/ftps.yaml
#kubectl create -f srcs/grafana/grafana.yaml
#kubectl create -f srcs/influxdb/influxdb.yaml
#kubectl create -f srcs/mysql/mysql.yaml
kubectl create -f srcs/nginx/nginx.yaml
#kubectl create -f srcs/phpmyadmin/phpmyadmin.yaml
#kubectl create -f srcs/wordpress/wordpress.yaml
