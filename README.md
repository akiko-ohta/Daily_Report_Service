# Daily Report Service

## サイト概要
ルーティンのある業務に従事する方のための、日報アプリ

### テーマを選んだ理由
業務上紙ベースでの日報を利用しておりましたが、常々以下の点に使いにくさと問題を感じておりました。</br>
まず、保管・管理に、場所をとる点です。直近のものはファイリングして使っておりましたが、過去数か月のものは段ボール等で一定の期間保管する必要があります。
段ボールへ移す際はもちろん、保管、破棄をする際が殊更に手間です。
破棄する時のことを考え、最新のものを下へ配置するか、破棄するときに最下層から引き抜く必要があり、いずれも重労働です。</br>
次に、以前に引継ぎされた情報を見返す際、非常に手間、時間のかかる点です。
紙ベースですと、自身の記憶を頼りに引継ぎがされた日時をおおよその検討をつけ、ひたすらページを繰っていくしかありません。
そういった場面に直面するたび、「データベースにすべて保存して、フリーワードで検索できればいいのに」と思っておりました。</br>
業務の変更があった際も、データ上で変更箇所を訂正し、数日分を出力。すでに出力してしまっていた変更前のものは、破棄するしかありません。</br>
そんな煩雑な日報管理を、Web上で一括管理できるようにしたいと思い、このテーマにしました。

### ターゲットユーザ
- ルーティンのある業務に従事する方
- 業務上の紙での日報管理を廃止し用途検討している会社の責任者

### 主な利用シーン
- 日常的な業務の中で、ルーティンになっている仕事を管理する時
- 引継ぎ事項の伝達の時
- 過去の日報を管理、整理する時

## 実装機能リスト
https://docs.google.com/spreadsheets/d/1WvFTd5NY1EWC7z0dTyO8IFY7xIiX6RMpGh5135rV-i4/edit?usp=sharing

## 設計書
- 画面遷移図
https://drive.google.com/drive/folders/16zCeYLeueByvmQHBSMM3wPsbFkNrgcAE?usp=sharing
- ワイヤーフレーム
https://drive.google.com/drive/folders/1JPk2W4qNtX6rWHkeNft-sopC9cBuOup5?usp=sharing
- ER図
https://drive.google.com/file/d/1PHPXPSc3K2m6X1XenGWynSlc6xL2YGK3/view?usp=sharing
- テーブル定義書
https://docs.google.com/spreadsheets/d/1HFKrfcVxoffQEY5aWeAXfYrLrLq-1N4pukQmrIYBDyA/edit?usp=sharing
- テスト仕様書
https://docs.google.com/spreadsheets/d/1yY5hpC7ONiaremf0iTH0XyAas0xxYA41uX2dQvOaC0w/edit?usp=sharing

## 開発環境
- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JSライブラリ：jQuery
- IDE：Cloud9


## 使用素材
- Bootstrap4
https://v4.bootstrap-guide.com/getting-started/introduction
- Devise
https://github.com/heartcombo/devise#getting-started
- kaminari
https://github.com/kaminari/kaminari
- enum_help
https://github.com/zmbacker/enum_help