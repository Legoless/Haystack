Workflow
========

This document describes workflow used to develop iOS applications. It cycle begins by creating the project and ends with releasing a version to the App Store.

It consists of multiple steps, which are combined from smaller steps. Each step can be repeated multiple times, as features are added to the project and issues are corrected

- Project creation
  - Source control structure
  - Project structure
- Development
- Deployment
  - Testing
  - Continuous Integration
  - Beta (TestFlight)
- App Store

# Project creation

Project structure is configured with a command line app called Liftoff.

### Testing application schemes

For testing different application schemes we use an app called: [Launch Center Pro](http://contrast.co/launch-center-pro/) by [Contrast](http://contrast.co), which enables you to store launch schemes and share those via Dropbox.

## Beta

To deploy an application, we use TestFlight or Crashlytics (Fabric) Beta to where our testers and clients are signed up.
For most of the apps I use [Fastlane](https://fastlane.tools) for testing, building and distributing.
