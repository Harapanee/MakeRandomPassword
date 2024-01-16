# パスワード生成プログラム

## 使用前の問題点
- 特殊文字を含める場合、１文字のみの特殊文字が含まれる。

## 使用法
1. プログラムを実行し、標準入力から以下の情報を入力する。
   - パスワードの長さ
   - 特殊文字の使用の有無
   - 任意の文字列（必要ない場合は空で入力）

2. プログラムは5つのランダムなパスワードを生成し、ユーザーに表示する。
3. ユーザーは生成された5つのパスワードから選択するよう求められる。
4. 選択されたパスワードが表示される。

## 使ったコードの簡単な解説
- `generate_password`: パスワードを生成するメソッド。特殊文字を含む場合、必ず1文字以上の特殊文字を含むように生成される。
- `generate_multiple_passwords`: 複数のパスワードを生成するメソッド。指定された数だけ`generate_password`を呼び出して配列として返す。

## 使用後の効率の向上
- パスワードを作る際、自身でパスワードを考えるよりもランダム性を含むパスワードを自動生成することでセキュリティ性が向上された。
- 新しく何かのパスワードを作る際に悩む必要がなくなるので時間効率が上がる。
- 複数のパスワードから選択できる機能の追加により、ランダムな中でもユーザーの好みに近いパスワードを選ぶことができる。