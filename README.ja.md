# Kasen

Image Assistant for Coda 2

# 必須環境

* Coda 2
* Ruby
* ImageMagick(オススメ: Homebrewパッケージ)

# 使い方

### イメージサイズ算出

CSS文書でbackgroundの行末にカーソルを移動させてからメニューから`Kasen => Measure Image Size`を選択すると、Kasenがイメージサイズを計算してwidthとheightを挿入します。

※フォルダからCSS文書にD&Dすると`url(hoge)`と挿入されますが、その状態のまま実行すると`url(hoge)`が`background: url(hoge) 0 0 no-repeat`と置き換えた上でwidthとheightも挿入されます。

ショートカットキー`Command + Shift + M`でも同様のことが出来ます。

![SS](http://cl.ly/image/403z3j311U24/kasen-measure-image.png)

# クレジット

Maintainer: o_ame - http://oameya.com  
Licensed by MIT License