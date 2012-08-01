# Kasen

Retina assistant tool for Coda 2

# 必須環境

* Coda 2
* Ruby
* ImageMagick(オススメ: Homebrew package)

# 使い方

### 一括変換
`Kasen => Convert All`を選択するとプロジェクト内の全てのリソースから`image@2x.png`のようにファイル名の末尾に`@2x`が付いている画像を抽出して、それを縮小した後に`image.png`のように末尾から`@2x`を取り除いた名前で保存します。

### 個別変換

CSS文書を開いた状態で`background: url(../images/button@2x.png) 0 0 no-repeat`の`../images/button@2x.png`を選択します。その状態でメニューから`Kasen => Convert Selected`を選択すると自動的にそのファイルの1xバージョンを作成します。

# クレジット

Maintained by oame - http://oameya.com
Licensed by MIT License