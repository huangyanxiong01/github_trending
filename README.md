# Github trending api for dart
Get the popular repository on github,You can also get all the languages.And convert the data into Map, List, JSON

## Usage

A simple usage example:

```dart
GithubTrending githubTrending = GithubTrending();
try {
  // default time language
  List<Map<String, dynamic>> defaultArray = await githubTrending.toList();
  print(defaultArray);
} catch (e) {
  // get origin response
  githubTrending.response;
  print(e);
}
```

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/huangyanxiong01/github_trending/issues
