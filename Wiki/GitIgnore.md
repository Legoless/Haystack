Default **Gitignore** we use in most projects. For most cases we also commit Pods directory into repository, to keep the project buildable on any system, including test servers. We also use **Dominus** to build our projects, so we skip it's configuration file, because it may have sensitive data such as keys in some cases.

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
profile
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
