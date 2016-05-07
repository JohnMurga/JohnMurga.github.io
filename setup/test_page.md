---
title: A test page with test content
date: 2016-01-01 11:11:11
categories:
- General
tags:
- NodeJs
---
#### A nice first heading within the article
Hello there, I am a test :-)
#### And so will this
The relative image tags required for Hexo to work well.
##### Look ...
{% asset_img test_image.jpg %}
{% asset_link test_image.jpg A link to my test picture %}
#### And now for some code
```javascript
/* Finds the lowest common multiple (LCM) of two numbers */
function LCMCalculator(x, y) { // constructor function
    var checkInt = function (x) { // inner function
        if (x % 1 !== 0) {
            throw new TypeError(x + " is not an integer"); // throw an exception
```

## This won't appear on the preview
### And neither will this ...
# But this will appear !!
And of course, so will this ...

<!-- more --> 

But anything after this would only appear on the "read more"

#### Some labels
{% label "default" %} {% label "primary" primary %} {% label "success" success %} {% label "warning" warning %} {% label "danger" danger %} {% label "info" info %}
And ...
{% btn "javascript:alert('Hello')" "Buttons work the same" danger %}
And ...
{% textcolor success %}As does text.{% endtextcolor %}
And ...
{% alert warning %}
    So do alert messages
{% endalert %}

#### Some quick video
{% youtube video_id %}

#### Misc stuff
{% raw %}
*A raw unprocessed block*
{% endraw %}

<p>A paragraph in raw <b>HTML</b> and FontAwesome <i class="fa fa-cogs"/></i></p>

Thanks for watching :-)
