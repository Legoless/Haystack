# Gitignore

Default **Gitignore** I use with most projects.

For most cases I also commit Pods directory into repository, to keep the project buildable on any system, including test servers. There are some exceptions to this rule, so it is entirely up to you.

I also use [**Dominus**](https://github.com/Legoless/Dominus) to build the projects, so I skip it's configuration file, because it may have sensitive data such as API keys in some cases. Also AppCode (.idea) and Carthage is skipped.

```
# OS X
.DS_Store

## Build generated
build/
DerivedData

## Various settings
*.pbxuser
!default.pbxuser
*.mode1v3
!default.mode1v3
*.mode2v3
!default.mode2v3
*.perspectivev3
!default.perspectivev3
xcuserdata

## Other
*.xccheckout
*.moved-aside
*.xcuserstate
*.xcscmblueprint

## Obj-C/Swift specific
*.hmap
*.ipa

# Swift Package Manager
#
# Add this line if you want to avoid checking in source code from Swift Package Manager dependencies.
# Packages/
.build/

# CocoaPods
#
# We recommend against adding the Pods directory to your .gitignore. However
# you should judge for yourself, the pros and cons are mentioned at:
# https://guides.cocoapods.org/using/using-cocoapods.html#should-i-check-the-pods-directory-into-source-control
#
# Pods/

# Carthage
#
# Add this line if you want to avoid checking in source code from Carthage dependencies.
# Carthage/Checkouts

Carthage/Build

# fastlane
#
# It is recommended to not store the screenshots in the git repo. Instead, use fastlane to re-generate the 
# screenshots whenever they are needed.
# For more information about the recommended setup visit:
# https://github.com/fastlane/fastlane/blob/master/docs/Gitignore.md

fastlane/report.xml
fastlane/screenshots

#
# Code Coverage
#
*.gcda
*.gcno

#
# AppCode
#
.idea/

#
# Dominus
#
dominus.cfg

#
# KZBootstrap
#
KZBootstrapUserMacros.h
```
