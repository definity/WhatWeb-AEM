##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# https://www.morningstarsecurity.com/research/whatweb
##
Plugin.define do
name "AEM"
authors [
  "Chad Brigance @ChadBrigance" 
]
version "0.1"
description "Adobe Enterprise Manager is an enterprise Content Management System (CMS) by Adobe."
website "https://www.adobe.com/marketing/experience-manager.html"

#examples %w| #https://www.adobe.com/ |

#def passive

# Matches #
matches [
 
  # HTML

  # Borrowing from Wappalyzer (MIT License)
  # https://github.com/AliasIO/wappalyzer/blob/master/LICENSE
  # "html": [
  #      "<div class=\"[^\"]*parbase",
  #      "<div[^>]+data-component-path=\"[^\"+]jcr:",
  #      "<div class=\"[^\"]*aem-Grid"
  {:name=>"div class parbase", :regexp=>/<div class=\"[^\"]*parbase/},
  {:name=>"div data-component-path jcr", :regexp=>/<div[^>]+data-component-path=\"[^\"+]jcr:/},
  {:name=>"div class aem-Grid", :regexp=>/<div class=\"[^\"]*aem-Grid/},
  
  # Scripts 
  
  # Borrowing from Wappalyzer (MIT License)
  # https://github.com/AliasIO/wappalyzer/blob/master/LICENSE
  {:name=>"/etc/designs/", :regexp=>/<script type="text\/javascript" src="\/etc\/designs\//},
  {:name=>"/etc/clientlibs/", :regexp=>/<script type="text\/javascript" src="\/etc\/clientlibs\//},
  {:name=>"/etc.clientlibs/", :regexp=>/<script type="text\/javascript" src="\/etc\.clientlibs/},

]

#end
# Aggressive #
# Not implemented yet... but aem-hacker has a great list of checks.


end
