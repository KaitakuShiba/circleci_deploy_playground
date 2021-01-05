## 概要
承認ボタンを押下すると、Prod向けのHTMLファイルをCDでECSにデプロイしてNginxでHTMLを返す何か

## コマンド
```bash
## Dev
$ docker build -t myapp_dev .
$ docker run --rm --name web -d -p 8080:80 -v $PWD/dev.html:/usr/share/nginx/html/dev.html nginx

## Prod
$ docker build -f ./prod/Dockerfile.prod -t myapp_prod ./prod/
$ docker run --rm --name web -d -p 8080:80 -v $PWD/prod/prod.html:/usr/share/nginx/html/prod.html nginx
```

#### Exec
```
$ docker exec -it web /bin/bash
```

## AWS
### ECR
```bash
# Format
$ make run ARG=fmt ARG2=main.tf

# terraform init
$ make run ARG=init ARG2=

# terraform plan
$ make run ARG=plan ARG2=

# terraform apply
$ make run ARG=apply ARG2=-auto-approve
```

### ECS

## 参考
https://circleci.com/docs/ja/2.0/ecs-ecr/
