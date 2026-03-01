# 天気予報アプリ (Weather Forecast App)

Flutterを用いて構築された、5日間の天気予報を取得・表示するアプリケーションです。
外部API（OpenWeatherMap）と通信し、都市ごとや現在地の天気を一覧表示します。将来のバックエンド変更（Laravel等の自社APIへの移行）を見据え、クリーンアーキテクチャ・DDDの思想を取り入れた層ごとの分離を行っています。

## 🌟 主な機能 (Features)

- **都市別の天気予報表示:** 指定された4都市（東京、兵庫、大分、北海道）の5日間（3時間ごと）の天気を取得・表示します。
- **現在地からの取得 (応用機能):** デバイスのGPSを利用し、現在地の天気予報を取得します。
- **ローカルキャッシュ機能:** 同日中に同じ都市の天気情報を再取得する際は、APIを叩かずにローカルキャッシュ（SharedPreferences）からデータを瞬時に表示します。日付が変わった場合にのみ、新たにAPIリクエストを実行します。
- **状態管理とUX:** ローディング中、データ取得成功、エラー発生時の状態を完全にハンドリングし、エラー時には「再試行」ボタンを提供します。

## 🛠 技術スタック (Tech Stack)

- **UI & Framework:** Flutter
- **State Management & DI:** Riverpod (`riverpod_annotation`, `AsyncNotifier`)
- **Routing:** GoRouter (URLベースの宣言的ルーティング)
- **Network:** Dio (HTTPクライアント)
- **Local Storage:** SharedPreferences (キャッシュ保存)
- **Data Modeling:** Freezed, JsonSerializable (不変なデータクラスとJSONシリアライズ)
- **Location:** Geolocator (位置情報の取得)
- **Environment:** flutter_dotenv (.envによるAPIキーの隠蔽)

## 🏗 アーキテクチャ設計 (Architecture)

アプリは以下の4つの層に分離されており、特定のパッケージやAPIへの依存を局所化しています。

1. **Presentation層:** 画面（UI）の描画とユーザー操作の受け付け。
2. **Application層:** `WeatherNotifier` を用いた状態（ローディング・成功・エラー）の管理と、各層の依存性の注入（DI）。
3. **Domain層:** アプリの中核となるモデル（`Weather`）と、リポジトリのインターフェース（`WeatherRepository`）。**※UI側はこの層しか知らないため、将来APIがLaravelに変わってもUIのコード変更は不要です。**
4. **Infrastructure層:** Dioを用いた外部API通信や、SharedPreferencesを用いた泥臭いデータ処理を行い、Domain層の綺麗な形に変換（DTO）して返します。

## 🚀 セットアップと起動方法 (Getting Started)

このプロジェクトをローカルで実行するための手順です。

### 1. パッケージの取得
```bash
flutter pub get
