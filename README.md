# 【Anything Dictionary】※なんでも図鑑

![](img/2023-06-16-11-54-58.png)

### 【Git 情報】

![GitHub top language](https://img.shields.io/github/languages/top/hagi-takumi/swift_img_CHK)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/hagi-takumi/swift_img_CHK)
![GitHub last commit](https://img.shields.io/github/last-commit/hagi-takumi/swift_img_CHK)

---

### 【使用システム】

<div>
<img src="https://img.shields.io/badge/-Xcode-1575F9.svg?logo=xcode&style=plastic">
<img src="https://img.shields.io/badge/-Swift-FA7343.svg?logo=swift&style=plastic">
<img src="https://img.shields.io/badge/-Core%20ML%20Model-EF9421.svg?logo=swift&style=plastic">
</div>

<hr>

### 【オススメライブラリ】

<div>
<img src="https://img.shields.io/badge/-Core%20ML%20Model-EF9421.svg?logo=swift&style=plastic">

[Core ML モデル](https://developer.apple.com/jp/machine-learning/models/)

</div>

<hr>

# 目次

<details>

<summary>目次一覧</summary>

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [🎤 システム概要](#-%E3%82%B7%E3%82%B9%E3%83%86%E3%83%A0%E6%A6%82%E8%A6%81)
  - [🎤 背景](#-%E8%83%8C%E6%99%AF)
  - [🎤 使用 URL（デプロイ先）](#-%E4%BD%BF%E7%94%A8-url%E3%83%87%E3%83%97%E3%83%AD%E3%82%A4%E5%85%88)
- [🎤 機能](#-%E6%A9%9F%E8%83%BD)
- [🎤 アーキテクチャー](#-%E3%82%A2%E3%83%BC%E3%82%AD%E3%83%86%E3%82%AF%E3%83%81%E3%83%A3%E3%83%BC)
- [🎤 プログラム構成](#-%E3%83%97%E3%83%AD%E3%82%B0%E3%83%A9%E3%83%A0%E6%A7%8B%E6%88%90)
- [🎤 スキーマ](#-%E3%82%B9%E3%82%AD%E3%83%BC%E3%83%9E)
- [🎤 使用環境](#-%E4%BD%BF%E7%94%A8%E7%92%B0%E5%A2%83)
- [🎤 必要要件](#-%E5%BF%85%E8%A6%81%E8%A6%81%E4%BB%B6)
- [🎤 インストール](#-%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB)
- [🎤 使い方](#-%E4%BD%BF%E3%81%84%E6%96%B9)
- [🎤 テスト](#-%E3%83%86%E3%82%B9%E3%83%88)
- [🎤 デプロイ](#-%E3%83%87%E3%83%97%E3%83%AD%E3%82%A4)
- [🎤 その他](#-%E3%81%9D%E3%81%AE%E4%BB%96)
- [🎤 作者](#-%E4%BD%9C%E8%80%85)
- [🎤 今後の計画](#-%E4%BB%8A%E5%BE%8C%E3%81%AE%E8%A8%88%E7%94%BB)
- [🎤 評価基準（8 項目）](#-%E8%A9%95%E4%BE%A1%E5%9F%BA%E6%BA%968-%E9%A0%85%E7%9B%AE)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

</details>

## 🎤 システム概要

このシステムは「なんでも図鑑 🧠」になります。
画像の URL を入力して、検索すると
過去のデータベースから該当する割合の高い「名前」を出力してくれます！

### 🎤 背景

🚩 下記内容からこのシステムを作成するプロジェクトが開始しました。

- **【困りごと】**
  - 画像やイメージがあるけど名前がスッと出てこない・・・
  - あの人誰だっけ？？
  - キャベツとレタスすぐに判断できない
  - 小松菜とほうれん草どっちだっけ？
- **【欲しいシステム】**
  - 画像を元に名前を瞬時に知りたい！！

### 🎤 使用 URL（デプロイ先）

- 実際のシステム Anything Dictionary】は公開しておりません。
- 一夜限りのシステムです！！😜

## 🎤 機能

- [x] URL の入力が可能
- [x] URL の画像より名前を瞬時に検索可能
- [x] 一番該当率の高い名前を推測する
- [x] URL 削除ボタンがある
- [x] iphone 対応

## 🎤 アーキテクチャー

![](img/2023-06-16-02-40-45.png)

## 🎤 プログラム構成

アーキテクチャーと同様
画面遷移はありません。

## 🎤 スキーマ

なし

## 🎤 使用環境

- macOS
- Xcode
- SwiftUI
- Core ML モデル

## 🎤 必要要件

- Xcode のダウンロード

## 🎤 インストール

```
$ git clone https://github.com/〜〜 //クローンする
$ cd 〜〜 //クローンしたディレクトリに移動する
```

## 🎤 使い方

1. クローン後、Xcode のローカル環境で実施ください

## 🎤 テスト

#### フロントエンド

- [ ] なし

#### バックエンド

- [ ] なし

## 🎤 デプロイ

1. なし

## 🎤 その他

ユーモアのある画像を試してみてください！！

## 🎤 作者

- 萩 巧実

## 🎤 今後の計画

- [ ] データベースに保存してたい
- [ ] テストコードを書く
- [ ] お気に入り登録

## 🎤 評価基準（３ 項目）

- [x] 1 週間で Swift について学んだこと
- [x] アプリのデモ
- [x] アプリのソースコード
