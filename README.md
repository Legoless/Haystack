Haystack
========

Haystack SDK contains a multiple resources for **iOS** / **OSX** developers, including a collection of simple Objective-C classes and categories that fit in almost every project. Most of these classes are not large or structured enough to fit in a special library or framework, but are regurarely needed throughout the most projects you are working on. Basically it is meant to fill the void of classes without libraries.

Project is actively developed and as the Apple SDK's changes, project will be updated. Note that the project is not finished and might contain bugs. Feel free to open an issue.

*Please contact me for contributions to the project. If you notice an useful extension to the iOS SDK's that can be included in the SDK, contact me.*

Contents
========
Haystack is **not limited only** to Objective-C code, but contains multiple resources used in development. Resources are divided into sections, each of which is represented by a folder of the same name:

- **Pods**

   Example podfiles that are used in many of the commercial projects, including more advanced configurations and even podspec files to create new specifications.  

- **SDK**

   Contains Objective-C classes and categories that are installed part of a CocoaPods install. The classes are general and extend base Apple SDK's.  
   
   - Categories
     - NSDate+Timestamp
     - NSString+Additional
     - UIApplication+Version 
     - UIButton+Position
     - UIColor+Create
     - UIColor+Flat
     - UIDevice+DeviceInfo
     - UINavigationController+BackgroundImage
   - Classes
- **Wiki**

   Development guidelines, project initialization and deployment workflows, App Store suggestions, Wikis for development tools, instructions, tutorials, most useful libraries and more.  
   
   - [Libraries](https://github.com/Legoless/Haystack/blob/master/Wiki/Libraries.md)

Usage
=======

Documentation
-------
All header files and fully documented for ease of use. Only method stubs are displayed in readme, to keep it short. The documentation is in DoxyGen format, allowing you to automatically generate documentation.

Installation & Setup
--------
You can install the SDK via CocoaPods:
```
pod 'Haystack', :git => 'https://github.com/Legoless/Haystack.git'
```

Or manually drag & drop `Haystack` folder into Xcode project, then follow the using in project suggestion.

Using in project
--------
It is recommended for you to add Haystack.h file into precompiled header (.pch) file. That way all classes and categories are added to all files and you can use them everywhere throughout the project.

Classes
=======

DRMath
--------
A basic class for all the missing mathematical and number operations .

```objective-c
+ (double)degreesToRadians:(double)angle;

+ (double)radiansToDegrees:(double)radians;

+ (double)random;

+ (double)randomBetweenMin:(double)min max:(double)max;

+ (NSInteger)randomBetweenMin:(NSInteger)min max:(NSInteger)max;
```

HSViewController
--------
Subclass of view controller with additional methods.

HSTableViewController
--------
Subclass of table view controller with additional methods.

Documents
=======
Haystack SDK includes documents that can be used in development.

License
=======

Copyright (c) 2014 arvystate.net

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
