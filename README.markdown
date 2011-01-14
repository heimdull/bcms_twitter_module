# Browser CMS twitter timeline Module

Twitter timeline module for BrowserCMS gives you a portlet to display a users Twitter timeline. It will cache the timeline and you can also change the amount of tweets that are pulled.

## Getting Started

### Installation
Have a look here to see how BrowserCMS modules installs in BrowserCMS (http://guides.browsercms.org/installing_modules.html)

	gem install bcms_twitter_module

### Configuration changes

Edit config/environment.rb

	config.gem "browsercms"
	config.gem "bcms_contact_us_module"
	
Run this

	script/generate browser_cms
	rake db:migrate

## License
Twitter Timeline is released under a LGPL license, and is copyright 1998-2011 Freddy Andersen, Zerolimits Technology. The complete copyright can be found in COPYRIGHT.txt, and copy of the license can be found in LICENSE.txt.

## Support
If you have problems with this module add a new issue under the issues tab on github