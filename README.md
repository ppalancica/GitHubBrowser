# GitHubBrowser

https://github.com/cocoacontrols/SemanticUI
https://developer.apple.com/design/human-interface-guidelines/typography
https://www.paintcodeapp.com/news/ultimate-guide-to-iphone-resolutions

https://developer.github.com/v3/
https://docs.github.com/en/rest?apiVersion=2022-11-28
https://docs.github.com/en/rest/users/followers?apiVersion=2022-11-28

https://developer.apple.com/documentation/foundation/encoding-and-decoding-custom-types

curl https://api.github.com/users/ppalancica
curl https://api.github.com/users/octocat

If we add a Support folder, we should not include info.plist there, or we can add it using the steps below (to let Xcode know the proper path):

You can go into the Build Settings for your project and in the search bar type info.plist and hit enter.
There will be a path in Packaging with the key Info.plist File.

Double click on that and if it's in Support you need to enter a slash before /Info.plist and in-between the two slashes now you can type Support and hit enter and the project can find the plist again. 

For example it should read: [ProjectName]/Support/Info.plist

Click on Editor in the menu and click Validate Settings. After that command-B and everything should build fine.

https://developer.apple.com/documentation/swift/managing-a-shared-resource-using-a-singleton

https://en.wikipedia.org/wiki/List_of_HTTP_status_codes

https://developer.apple.com/documentation/uikit/uitableviewcell/contentview

https://developer.apple.com/videos/play/wwdc2019/220/

https://developer.apple.com/documentation/swift/hashable
