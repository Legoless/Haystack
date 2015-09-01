Default **Gitignore** I use with most projects.

For most cases we also commit Pods directory into repository, to keep the project buildable on any system, including test servers.

I also use [**Dominus**](https://github.com/Legoless/Dominus) to build the projects, so I skip it's configuration file, because it may have sensitive data such as API keys in some cases.

```
# OS X
.DS_Store

# Xcode
build/
*.pbxuser
!default.pbxuser
*.mode1v3
!default.mode1v3
*.mode2v3
!default.mode2v3
*.perspectivev3
!default.perspectivev3
xcuserdata
*.xccheckout
*.moved-aside
DerivedData
*.hmap
*.ipa

# AppCode
.idea/

# Dominus
dominus.cfg

# CocoaPods
#Pods

# KZBootstrap
KZBootstrapUserMacros.h

```
