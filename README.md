# ssr-project

> My unreal Nuxt.js project

## Build Setup

```bash
# install dependencies
$ yarn install

# serve with hot reload at localhost:3000
$ yarn dev

# build for production and launch server
$ yarn build
$ yarn start

# generate static project
$ yarn generate
```

\$ npm start
pm2 start npm --name "ssr-project" -- run start

For detailed explanation on how things work, checkout [Nuxt.js docs](https://nuxtjs.org).

## docker 部署
### 
$ docker build -t test-ssr .

$ docker run -d --name ssr-server -p 3000:3000 test-ssr
ssr-server: 容器名称
test-ssr: 镜像
关闭
$ docker stop ssr-server
