# 概要

- resourceの場合はポリモーフィックURLが効かないので、simple_form_forにurlオプションを指定する必要がある

## urlオプションをつける参考サイト
- https://stackoverflow.com/questions/3736759/ruby-on-rails-singular-resource-and-form-for
- https://qiita.com/yoskmr/items/cc8a2dc51c928aa1c87a

## resourceの場合はnewは不要
- 下記の書き方で常にeditへ飛ばせばいい

```ruby
  def edit
    @profile = @user.profile || @user.build_profile
  end
```

- beforeフィルターでuser作成時にprofileも作成してやれば、上記の@user.build_profileもいらない。
- user作成時にprofileも作成するパターンは後々の処理が楽（@user.profileがあるかをviewでいちいち判定しなくていい）を考えるととても良いが、view側で判定などする必要もないのなら上記の@user.build_profileを入れてやっても良いと思う。ケースバイケース
- profileの場合はuser作成時にprofileも作成するパターンが向いていると思う
