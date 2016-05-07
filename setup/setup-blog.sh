#
# Copyright 2015-2016 John de Murga - Licensed under the GPLv2
# 

npm install hexo-cli
npm install flatten-deps

./node_modules/.bin/flatten-deps

./node_modules/.bin/hexo init myBlog
cd myBlog/
npm install

npm install hexo-tag-bootstrap --save
npm install hexo-generator-search --save
npm install hexo-cli --save

../node_modules/.bin/flatten-deps

curl https://github.com/wzpan/hexo-theme-freemind/archive/master.zip
curl -L -o freemind-theme.zip https://github.com/wzpan/hexo-theme-freemind/archive/master.zip
unzip freemind-theme.zip -d themes
rm freemind-theme.zip
mv themes/hexo-theme-freemind-master themes/freemind

sed -i "s/^new_post_name: /new_post_name: :year-:month-:day-:title.md #/g" _config.yml
sed -i "s/^post_asset_folder: /post_asset_folder: true #/g" _config.yml
sed -i "s/^theme: /theme: freemind #/g" _config.yml
sed -i "s/^url: /url: http:\/\/localhost:4000 #/g" _config.yml

echo "# Disqus - Enter a shortname to enable" >> _config.yml
echo "disqus_shortname: " >> _config.yml

sed -i "s/background-color: #fff;/background-color: #eee;/g" themes/freemind/source/css/style.css
sed -i "s/font-size: 16px;/font-size: 15px;/g" themes/freemind/source/css/style.css
sed -i "s/<i class=\"fa fa-heart\"><\/i>//g" themes/freemind/layout/_partial/post/slogan.ejs

sed -i "s/^bdshare: /bdshare: false #/g" themes/freemind/_config.yml

cp themes/freemind/languages/default.yml default_lang.yml
rm themes/freemind/languages/*
mv default_lang.yml themes/freemind/languages/default.yml

rm -rf themes/landscape

mkdir source/categories
echo "title: Categories" > source/categories/index.html
echo "layout: categories" >> source/categories/index.html
echo "---" >> source/categories/index.html

mkdir source/tags
echo "title: Tags" > source/tags/index.html
echo "layout: tags" >> source/tags/index.html
echo "---" >> source/tags/index.html

mkdir source/about
echo "title: About" > source/about/index.html
echo "layout: about" >> source/about/index.html
echo "---" >> source/about/index.html

echo ""
./node_modules/.bin/hexo new "A first test post"
cp ../test_page.md source/_posts/*test-post.md
cp ../test_image.jpg source/_posts/*test-post/

echo ""
echo "All done !!"
echo ""
echo "Now just edit _config.yml and themes/freemind/_config.yml"
echo ""
