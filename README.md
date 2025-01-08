# mypkg [![test](https://github.com/kiyo911/mypkg/actions/workflows/test.yml/badge.svg)](https://github.com/kiyo911/mypkg/actions/workflows/test.yml)

## 簡単な説明
mypkgはros2のパッケージです。以下のノードが含まれます。
- fibonacci.py
  - フィボナッチ数列をトピックから出すノードです。
- listener.py
  - デバッグ用


### このノードは何をするものなのか
- フィボナッチ数列の数値を順番にトピックから出します。46番目の数値まで正確に算出できます。

### このコードの使い方
パッケージをビルドした後、下記のコマンドを入力してください。

```
ros2 run mypkg fibonacci #ノードを実行
```

別の端末で

```
ros2 topic echo /fibonaccino #ros2を使ってサブスクライブ
```

# 必要なソフトウェア
- python
- ROS2

# test環境
- ubuntu-22.04
- ROS2 jazzy

###
