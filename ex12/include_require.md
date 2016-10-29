# 基礎 Ruby 中 Include, Extend, Load, Require 的使用區別

include是讓這個class所產生的instance繼承module中的method，有點javascript中function.prototype的味道。
extend則是讓這個class具有module中的method，卻不會繼承給instance。

在講require之前必須先提到load，load的作用在於將不同檔案的module給mix進來，概念上類似於C的include。而require的作用就類似於load，只是在require只會mix一次，當發現之前已經mix過同一個檔案時，require就會回傳false。
require相對load會少掉不必要的mix動作，但在module時常被更新的狀態下，最好使用load來確保自己抓到的檔案是最新的。



## require” 和 “load” 用途是一致的, 用來載入新的程式庫, “include” 是用來 mix-in 模組.

1. “require” 可載入某個 a.rb 檔案, 且可以省略 ”.rb”. 而且它只會在第一次的時候載入, 若再次 “require” 時就會忽略
require 'a'
a = A.new

2. “load” 和 “require” 一樣但要用 a.rb 全名, 且每次一定會重新載入
load 'a.rb'
a = A.new

3. 載入程式庫的順序呢(類似 java class path)? Ruby 把這個資訊存在 ”$:” 系統全域變數上, 你可以藉著 RUBYLIB 或 ruby -I 來加入新的載入目錄.
puts $:

4. “include” 用來 mix-in 某個模組, 可以減少書寫的長度
require 'webrick'
include WEBrick

//可以不用 server = WEBrick::HTTPServer.new(...)
//server = HTTPServer.new(...)


[翻譯](https://ruby-china.org/topics/node68)
       ·
      [skpark1987](https://ruby-china.org/skpark1987)
       ·
      於

<abbr class="timeago" title="2015年5月22日">2015年5月22日</abbr>發佈
         ·
        最後由 [088pause](https://ruby-china.org/088pause) 於

<abbr class="timeago" title="2015年12月23日">2015年12月23日</abbr>回覆
       ·
      5723 次閱讀

[![17502](https://ruby-china-files.b0.upaiyun.com/user/avatar/17502.jpg!md)](https://ruby-china.org/skpark1987)

__ 本帖已被設為精華帖！

<article>
**原文鏈接**:  [Ruby Require VS Load VS Include VS Extend](http://ionrails.com/2009/09/19/ruby_require-vs-load-vs-include-vs-extend/)

#### Include

如下例當你Include一個模塊到某個類時, 相當於把模塊中定義的方法插入到類中。它允許使用 mixin。它用來 DRY 你的代碼, 避免重複。例如, 當你有多個類時, 需要相同的函數時, 可以把函數定義到module中, 進行include。
下例假設模塊Log和類TestClass在相同的.rb文件。如果它們存在於多個文件, 則需要使用 load 或 require 導入文件。




```
module Log
  def class_type
    "This class is of type: #{self.class}"
  end
end

class TestClass
  include Log
end

tc = TestClass.new.class_type
puts tc #This class is of type: TestClass
```


#### Extend

當你使用Extend來替換 Include 的時候, 你會添加模塊裡的方法為類方法, 而不是實例方法。詳細請看例子：




```
module Log
  def class_type
    "This class is of type: #{self.class}"
  end
end

class TestClass
  extend Log
  # ...
end

tc = TestClass.class_type
puts tc  # This class is of type: TestClass
```


當你在類中使用 Extend 來代替 Include, 如果你實例化 TestClass 並調用 class_type方法時，你將會得到 NoMethodError。再一次強調, 使用 Extend 時方法是類方法。

#### Require

Require 方法允許你載入一個庫並且會阻止你加載多次。當你**使用 require 重複加載同一個library時，require方法 將會返回 false**。當你要載入的庫在不同的文件時才能使用 require 方法。下例將演示 require 的使用方式。

文件 test_library.rb 和 test_require.rb 在同一個目錄下。


```
# test_library.rb
puts " load this libary "
```





```
# test_require.rb
puts (require './test_library')
puts (require './test_library')
puts (require './test_library')
# 結果為
#  load this libary
# true
# false
# false
```


#### Load

Load 方法基本和 require 方法功能一致，但它不會跟蹤要導入的庫是否已被加載。因此當重複使用 load 方法時，也會載入多次。大部分情況你都會使用 require 來代替 load。但當你需要每次都要加載時候你才會使用 load, 例如模塊的狀態會頻繁地變化, 你會使用 load 進行加載，獲取最新的狀態。




```
puts load "./test_library.rb"  #在這裡不能省略 .rb, require可以省略
puts load "./test_library.rb"
puts load "./test_library.rb"
#結果
# load this libary
#true
# load this libary
#true
# load this libary
#true
```

</article>

[__ ](https://ruby-china.org/account/sign_in)
