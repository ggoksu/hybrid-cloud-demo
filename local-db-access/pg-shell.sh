kubectl run pg-shell -i --tty --image quay.io/skupper/simple-pg \
--env="PGUSER=postgres" \
--env="PGPASSWORD=skupper" \
--env="PGHOST=$(kubectl get service postgresql -o=jsonpath='{.spec.clusterIP}')" \
-- bash
