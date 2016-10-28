<header role="banner">

<hgroup>

# [Learn Ruby The Hard Way](/)

## 笨方法學 Ruby

</hgroup>

</header>

<nav role="navigation">

*   [RSS](/atom.xml "subscribe via RSS")

<form action="http://google.com/search" method="get">

<fieldset role="search"><input type="hidden" name="q" value="site:lrthw.github.com"> <input class="search" type="text" name="q" results="0" placeholder="Search"></fieldset>

</form>

*   [Blog](/)
*   [Archives](/blog/archives)

</nav>

<div id="main">

<div id="content">

<div>

<article class="hentry" role="article">

<header>

# 習題 5: 更多的變數和印出

<time datetime="2011-07-19T00:00:00+08:00" pubdate="" data-updated="true">Jul 19<span>th</span>, 2011</time>

</header>

<div class="entry-content">

我們現在要鍵入更多的變數並且將它們印出來，這次我們將使用一個叫「格式化字串(format string)」的東西，每一次你使用 `"` 將一些文字包起來，你就建立一個字串。字串是程式將資訊展示給人的方式。你可以印出他們，可以將它們寫入檔案，還可以將它們發給網站伺服器等等。

字串是很好用的東西，所以在這個練習中你將學會如何創造包含變數內容的字串，使用專門的格式和語法將變數的內容放到字串裡，相當於來告訴 Ruby: “Hey 這是一個格式化字串，把這些變數放到那幾個位置上”

如常，即使你還不懂這些內容，只要一字不差的鍵入就可以了。

<figure class="code">

<figcaption><span></span></figcaption>

<div class="highlight">

|

<pre class="line-numbers"><span class="line-number">1</span>
<span class="line-number">2</span>
<span class="line-number">3</span>
<span class="line-number">4</span>
<span class="line-number">5</span>
<span class="line-number">6</span>
<span class="line-number">7</span>
<span class="line-number">8</span>
<span class="line-number">9</span>
<span class="line-number">10</span>
<span class="line-number">11</span>
<span class="line-number">12</span>
<span class="line-number">13</span>
<span class="line-number">14</span>
<span class="line-number">15</span>
<span class="line-number">16</span>
<span class="line-number">17</span>
<span class="line-number">18</span>
</pre>

 |

```
my_name = 'Zed A. Shaw'
my_age = 35 # not a lie
my_height = 74 # inches
my_weight = 180 # lbs
my_eyes = 'Blue'
my_teeth = 'White'
my_hair = 'Brown'

puts "Let's talk about %s." % my_name
puts "He's %d inches tall." % my_height
puts "He's %d pounds heavy." % my_weight
puts "Actually that's not too heavy."
puts "He's got %s eyes and %s hair." % [my_eyes, my_hair]
puts "His teeth are usually %s depending on the coffee." % my_teeth

# this line is tricky, try to get it exactly right
puts "If I add %d, %d, and %d I get %d." % [
    my_age, my_height, my_weight, my_age + my_height + my_weight]

```

 |

</div>

</figure>

## 你應該看到的結果

```
$ ruby ex5.rb
Let's talk about Zed A. Shaw.
He's 74 inches tall.
He's 180 pounds heavy.
Actually that's not too heavy.
He's got Blue eyes and Brown hair.
His teeth are usually White depending on the coffee.
If I add 35, 74, and 180 I get 289.
$

```

## 加分習題

1.  修改所有的變數名稱，把它們前面的 `my_` 去掉，確認將每一個地方的都改掉，不只是你使用 `=` 賦值過的地方。
2.  試著使用更多的格式化字串。
3.  在網路上搜尋所有的 Ruby 格式化字串。
4.  試著使用變數將英吋和磅轉換成公分和公斤。不要直接鍵入答案，使用 Ruby 的數學計算來完成。

</div>

<nav class="pagination">

<div>[« 習題 4: 變數(variable)和命名](/ex04/ "Previous Post:
") || [習題 6: 字串(string)和文字 »](/ex06/ "next Post:
")</div>

</nav>

<footer>

<span class="byline author vcard">Posted by <span class="fn">xdite</span></span> <time datetime="2011-07-19T00:00:00+08:00" pubdate="" data-updated="true">Jul 19<span>th</span>, 2011</time>

<div class="sharing">[Tweet](http://twitter.com/share)</div>

</footer>

</article>

</div>

<aside class="sidebar">

<section>

# Recent Posts

*   [笨方法更簡單](/intro/)
*   [習題 0: 準備工作](/ex00/)
*   [習題 1: 第一個程式](/ex01/)
*   [習題 2: 註釋和井號](/ex02/)
*   [習題 3: 數字和數學計算](/ex03/)
*   [習題 4: 變數(variable)和命名](/ex04/)
*   [習題 5: 更多的變數和印出](/ex05/)
*   [習題 6: 字串(string)和文字](/ex06/)
*   [習題 7: 更多印出](/ex07/)
*   [習題 8: 印出，印出](/ex08/)
*   [習題 9: 印出，印出，印出](/ex09/)
*   [習題 10: 那是什麼？](/ex10/)
*   [習題 11: 提問](/ex11/)
*   [習題 12: 模組 (Module)](/ex12/)
*   [習題 13: 参数、解包、參數](/ex13/)
*   [習題 14: 提示和傳遞](/ex14/)
*   [習題 15: 讀取檔案](/ex15/)
*   [習題 16: 讀寫檔案](/ex16/)
*   [習題 17: 更多的檔案操作](/ex17/)
*   [習題 18: 命名、變數、程式碼、函式](/ex18/)
*   [習題 19: 函式和變數](/ex19/)
*   [習題 20: 函式和檔案](/ex20/)
*   [習題 21: 函式可以傳回東西](/ex21/)
*   [習題 22: 到現在你學到了哪些東西？](/ex22/)
*   [習題 23: 閱讀一些程式碼](/ex23/)
*   [習題 24: 更多練習](/ex24/)
*   [習題 25: 更多更多的練習](/ex25/)
*   [習題 26: 恭喜你，現在來考試了！](/ex26/)
*   [習題 27: 記住邏輯關係](/ex27/)
*   [習題 28: 布林（Boolean）表示式練習](/ex28/)
*   [習題 29: 如果（If）](/ex29/)
*   [習題 30: Else 和 If](/ex30/)
*   [習題 31: 做出決定](/ex31/)
*   [習題 32: 迴圈和陣列](/ex32/)
*   [習題 33: While 迴圈](/ex33/)
*   [習題 34: 存取陣列裡的元素](/ex34/)
*   [習題 35: 分支 (Branches) 和函式 (Functions)](/ex35/)
*   [習題 36: 設計和測試](/ex36/)
*   [習題 37: 複習各種符號](/ex37/)
*   [習題 38: 閱讀程式碼](/ex38/)
*   [習題 39: 陣列的操作](/ex39/)
*   [習題 40: Hash, 可愛的 Hash](/ex40/)
*   [習題 41: 來自 Percal 25 號行星的哥頓人(Gothons)](/ex41/)
*   [習題 42: 物以類聚](/ex42/)
*   [習題 43: 你來製作一個遊戲](/ex43/)
*   [習題 44: 評估你的遊戲](/ex44/)
*   [習題 45: 物件、類和從屬關係](/ex45/)
*   [習題 46: 一個專案骨架](/ex46/)
*   [習題 47: 自動化測試](/ex47/)
*   [習題 48: 更進階的使用者輸入](/ex48/)
*   [習題 49: 創造句子](/ex49/)
*   [習題 50: 你的第一個網站](/ex50/)
*   [習題 51: 從瀏覽器中取得輸入](/ex51/)
*   [習題 52: 創造你的網頁遊戲](/ex52/)
*   [下一步](/next/)
*   [一個老程式設計師的建議](/advice/)

</section>

<section>

# Github Repos

*   Status updating...

[@lrthw](https://github.com/lrthw) on Github <script type="text/javascript">$.domReady(function(){ if (!window.jXHR){ var jxhr = document.createElement('script'); jxhr.type = 'text/javascript'; jxhr.src = '/javascripts/libs/jXHR.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(jxhr, s); } github.showRepos({ user: 'lrthw', count: 0, skip_forks: true, target: '#gh_repos' }); });</script></section>

<section>

# Latest Tweets

*   Status updating...

<script type="text/javascript">$.domReady(function(){ getTwitterFeed("xdite", 4, false); });</script> [Follow @xdite](http://twitter.com/xdite)</section>

</aside>

</div>

</div>

<footer role="contentinfo">

Copyright © 2011 - xdite - <span class="credit">Powered by [Octopress](http://octopress.org)</span>

</footer>

<script type="text/javascript">var disqus_shortname = 'learnrubythehardway'; var disqus_script = 'count.js'; (function () { var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true; dsq.src = 'http://' + disqus_shortname + '.disqus.com/' + disqus_script; (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq); }());</script> <script type="text/javascript">(function() { var script = document.createElement('script'); script.type = 'text/javascript'; script.async = true; script.src = 'https://apis.google.com/js/plusone.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(script, s); })();</script> <script type="text/javascript">(function(){ var twitterWidgets = document.createElement('script'); twitterWidgets.type = 'text/javascript'; twitterWidgets.async = true; twitterWidgets.src = 'http://platform.twitter.com/widgets.js'; document.getElementsByTagName('head')[0].appendChild(twitterWidgets); })();</script> <script type="text/javascript">var _gaq = _gaq || []; _gaq.push(['_setAccount', 'UA-537077-9']); _gaq.push(['_trackPageview']); (function() { var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true; ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js'; var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s); })();</script>
