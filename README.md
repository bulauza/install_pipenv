# install_pipenv
pipenvをインストールするときのコマンドとか設定とか

## Why pipenv
### Anaconda(miniconda)のデメリット
* condaが使いにくい
  * conda install で無いもの多すぎ
  * conda activate とか長くない？
* どの仮想環境で実行すればいいか分からなくなる
    * なんなら環境名すら忘れる

## pipenvのインストール
```
$ git clone [here]
$ bash setup.sh
```

## 仮想環境作成
```
$ cd 作業環境
$ pipenv --python 3
$ pipenv shell
$ ls
-> Pipfileが出力されている
```

## 仮想環境内で環境構築
```
$ pipenv install numpy pandas
$ ls
-> Pipfile.lockが出力されている

# 開発環境用のパッケージを入れる場合
$ pipenv install ipdb --dev
```

## 既にある環境の再現
```
$ pipenv sync [--dev] # Pipfile.lock(verも再現)
or
$ pipenv install [--dev] # Pipfile(最新ver)
or
$ pipenv install -r ./requirements.txt
```

## 仮想環境起動&スクリプト実行の省略
```
$ pipenv run python sample.py
```

## 独自スクリプトの登録
```
$ vim Pipfile

[script]
start = "python sample.py"
format = "autopep8 -ivr ."

$ pipenv run start
```