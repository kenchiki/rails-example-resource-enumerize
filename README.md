# 概要

- enumerize gemを使って性別を入力させる
- resourceの場合はポリモーフィックURLが効かないので、simple_form_forにurlオプションを指定する必要がある
- profileはuser作成時に同時に作成されて、update時のみバリデーションが実行される

## urlオプションをつける参考サイト
- https://stackoverflow.com/questions/3736759/ruby-on-rails-singular-resource-and-form-for
- https://qiita.com/yoskmr/items/cc8a2dc51c928aa1c87a
