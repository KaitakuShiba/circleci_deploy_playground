## 概要
承認ボタンを押下すると、Prod向けのHTMLファイルをCDでECR・ECSにデプロイしてNginxでHTMLを返す何か

## コマンド
```bash
## Dev
$ docker build -t myapp_dev .
$ docker run --name web -d -p 8080:80 -v $PWD/dev.html:/usr/share/nginx/html/dev.html nginx

## Prod
$ docker build -f ./prod/Dockerfile.prod -t myapp_prod ./prod/
$ docker run --name web -d -p 8080:80 -v $PWD/prod/prod.html:/usr/share/nginx/html/prod.html nginx
```

#### Exec
```
$ docker exec -it web /bin/bash
```

## 参考
https://circleci.com/docs/ja/2.0/ecs-ecr/
