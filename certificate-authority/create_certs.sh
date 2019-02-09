# !/bin/bash
bash 01-certificate-authority/01-certificate-authority/certificate-authority.sh
bash 02-admin-client-certificate/02-admin-client-certificate/ca_config.sh
bash 03-kubelet-client-certs/03-kubelet-client-certs/kubelet-client-certs.sh
bash 04-controller-manager-client-cert/04-controller-manager-client-cert/controller_manager.sh
bash 05-kube-proxy-client/05-kube-proxy-client/kube-proxy.sh
bash 06-scheduler-client/06-scheduler-client/scheduler-client.sh
bash 07-kubernetes-api-server-cert/07-kubernetes-api-server-cert/api-server.sh
bash 08-service-acount-key-pair/08-service-acount-key-pair/service-account-key-pair.sh

cp 01-certificate-authority/*.pem ./
cp 02-admin-client-certificate/*.pem ./
cp 03-kubelet-client-certs/*.pem ./
cp 04-controller-manager-client-cert/*.pem ./
cp 05-kube-proxy-client/*.pem ./
cp 06-scheduler-client/*.pem ./
cp 07-kubernetes-api-server-cert/*.pem ./
cp 08-service-acount-key-pair/*.pem ./
