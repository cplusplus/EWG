rem WARNING This batch file assumes a checkout of the gh-pages branch,
rem in a directory named issues-gh-pages, at the same level as the master branch checkout
pushd ..\issues-gh-pages
call git pull
popd
copy /y lwg-*.html ..\issues-gh-pages
copy /y unresolved-*.html ..\issues-gh-pages
copy /y votable-*.html ..\issues-gh-pages
pushd ..\issues-gh-pages
call git commit -a -m"Update"
call git push  "origin" gh-pages:gh-pages
popd
