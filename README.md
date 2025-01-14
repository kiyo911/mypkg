# mypkg [![test](https://github.com/kiyo911/mypkg/actions/workflows/test.yml/badge.svg)](https://github.com/kiyo911/mypkg/actions/workflows/test.yml)

## 簡単な説明
mypkgはros2のパッケージです。以下のノードが含まれます。
- fibonacci
  - フィボナッチ数列をトピックから出すノードです。
- listener
  - デバッグ用


### このノードは何をするものなのか
- フィボナッチ数列の数値を順番にfibonaccinoというトピックから出します。46番目の数値まで正確に算出できます。

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

以下の環境でテストされています。
  - ubuntu-22.04
  - ROS2



# ライセンス
- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布及び仕様が許可されます。
- このパッケージのコードの一部は、下記のスライド(CC-BY-SA 4.0 by Ryuichi Ueda)のものを本人の許可を得て自身の著作としたものです。
  - https://ryuichiueda.github.io/slides_marp/robosys2024/lesson8.html
  - https://ryuichiueda.github.io/slides_marp/robosys2024/lesson9.html
  - https://ryuichiueda.github.io/slides_marp/robosys2024/lesson10.html

© 2025 Hiromu Kiyokawa
