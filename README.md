## 注意点

本リポジトリは、`https://github.com/LJOVO/TranSalNet`を submodule としているので、`git clone --recursive {gitのリポジトリurl}`としてダウンロードを実施すること

## 前準備

### 学習済みモデルの配置

`https://github.com/LJOVO/TranSalNet` から

1. TranSalNet_Res(https://drive.google.com/file/d/14czAAQQcRLGeiddPOM6AaTJTieu6QiHy/view)

2. resnet(https://drive.google.com/file/d/1AdTljzE3tvTIgTxWCEdf0g9ZWt68RCVD/view)

をダウンロードし、pretrained_models ディレクトリ配下に配置しておく。

### saliency map を確認したい画像の配置

saliency map を確認してみたい画像を`./example`配下に配置しておく。

## 環境構築方法

1. `docker build -t saliency-map .`で Docker image をビルドする。

2. `docker run -it --rm -p 8888:8888 -v {本ディレクトリへのパス}:/workspace saliency-map`を実行

3. `localhost:8888`にアクセス

## 実行方法

1. `testing.ipynb`を開く。

2. 上から順番にセルを実行していく。

3. `test_img`変数(最後のセルに定義)の画像パスを任意のパスに変更して実行。
