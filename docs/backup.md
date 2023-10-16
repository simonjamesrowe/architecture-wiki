# Mongo
Firstly port forward to mongo from jx namespace:
```
kubectl port-forward svc/jenkins-x-mongodb 27017:27017
```

Then run mongodump:
```
mongodump -u xxxx -p xxxx --authenticationDatabase=admin -d cms-production -o cms-production
```

If we want to restore simply run the command:
```
mongorestore -u "mongo-user" -p "DHwgG1ju2P+OO&uf" --authenticationDatabase=admin -d cms-staging --dir=.
```


# Attachments
To copy attachments from strapi to local machine:
```
kubectl cp  jx-strapi-cms-6f6d7846fb-7j8z4:/app/public/uploads .
```

To copy back 
```
kubectl cp . jx-strapi-cms-6f6d7846fb-7j8z4:/app/public/uploads
kube
```
