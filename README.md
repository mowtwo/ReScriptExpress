# 基于ReScript的Express整合方案
## 技术栈
- ReScript
- Express
- bsb
- bs-express
- Pug
## 使用
首先需要克隆下来  
然后通过`yarn`或者`npm`安装依赖
```bash
yarn 
# or
npm i
```
## 运行
这里默认使用`yarn`，npm用法类似
```bash
yarn watch #启动bsb对ReScript进行实时编译
node ./src/Index.bs.js # 对编译后的代码进行运行
# or
yarn start # 这里默认使用了nodemon，请自行安装
```