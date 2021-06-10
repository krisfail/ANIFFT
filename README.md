# ANIFFT

[アニメのキャプチャにFFTをかけて、大まかな画質を推定する](https://github.com/yuuki76/NIBINA)プロジェクトに利用するコード。

Autofft.sh:FFTWが利用可能でImageMagickが利用できる必要がある。  
Autofft.py:現在開発中。クロスプラットフォームにしようと努力してる

## 基本的な仕組み

1920x1080の画像を入力として受け取ります。その画像に黒帯をつけて1920x1920に変形した後、`convert -fft`によって得られるhogehoge-0.png(magnitude値)をlog100000,gamma1.5で見やすい形に補正します。

アニメ制作における解像度の推定に関する具体的方法は上リンク先を参照。

### ToDo

- Autofft.pyをAutofft.shと全く同じ動作をするように書き換える

- 引数の指定がhogehoge.pngではなくhogehogeになっている状況をどうにかする

- 入力サイズを1920x1080に限定する仕様をどうにかする

- 全処理をG'MICで実装する 
