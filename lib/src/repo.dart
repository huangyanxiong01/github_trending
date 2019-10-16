import 'package:html/dom.dart';
import 'config.dart';

/// Repo class convert github trending list item as Repo instance
class Repo {
  
  Element repoHtml;

  /// construct function
  Repo(this.repoHtml);
  
  /// get repo url from dom node
  String get url => site + repoHtml.querySelector('h1 a').attributes['href'];

  /// get repo name from dom node
  String get name =>  repoHtml
  .querySelector('h1 a')
  .attributes['href']
  .replaceFirst('/', '');

  /// get description name from dom node
  String get description {
    Element descritionNode = repoHtml.querySelector('.Box-row p');
    return descritionNode != null ? descritionNode.text.toString().trim() : '';      
  }

  /// get language name from dom node
  String get language {
    Element languageNode = repoHtml.querySelector('span[itemprop="programmingLanguage"]');
    return languageNode != null ? languageNode.text.trim() : 'Unkown';    
  }

  /// get star name from dom node
  String get star => repoHtml.querySelector("span[aria-label='star']").parentNode.text.trim();

  /// get fork name from dom node
  String get fork => repoHtml.querySelector("span[aria-label='fork']").parentNode.text.trim();

  /// get buildBy name from dom node
  List<String> get buildBy {
    return repoHtml.querySelectorAll('.avatar').map((Element ele) {
        return ele.attributes['src'].toString();
      }).toList();
  }
  
  /// get todayStar name from dom node
  String get todayStar{
    Element todayStarNode = repoHtml.querySelector('.float-sm-right');
    return todayStarNode != null ? todayStarNode.text.trim() : '';
  }
}