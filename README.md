# 👻 Phantom for iOS

[This repository](https://github.com/nordbearbotdev/phantom-dev) contains the complete source code of [Phantom](https://phantom.org) for iOS.

# Table of Contens

* [🛠 Report Bugs/Feature Requests/Security Issues](https://github.com/nordbearbotdev/phantom-ios/blob/main/README.md#-report-bugsfeature-requestssecurity-issues)
* [⚙ Source Code Release Policy](https://github.com/nordbearbotdev/phantom-ios/blob/main/README.md#-source-code-release-policy)
* [📖 License Checks](https://github.com/nordbearbotdev/phantom-ios#-license-checks)
* [📻 App Store Licensing](https://github.com/nordbearbotdev/phantom-ios#-app-store-licensing)
* [🔧 Phantom Work]()
* [⌨ Schemes](https://github.com/nordbearbotdev/phantom-ios#schemes)
* [🏗 Building](https://github.com/nordbearbotdev/phantom-ios/blob/main/README.md#building)
* [📥 Install Dependencies](https://github.com/nordbearbotdev/phantom-ios#1-install-dependencies)
* [🖥 Setup Project](https://github.com/nordbearbotdev/phantom-ios#2-setup-project)
* [🧤 Testing](https://github.com/nordbearbotdev/phantom-ios/blob/main/README.md#testing)
* [💾 Code Organization/Architecture](https://github.com/nordbearbotdev/phantom-ios/blob/main/README.md#code-organization--architecture)
* [👤 Contributing](https://github.com/nordbearbotdev/phantom-ios/blob/main/README.md#contributions)
* [📄 License](https://github.com/nordbearbotdev/phantom-ios/blob/README.md#license)

# 🛠 Report Bugs/Feature Requests/Security Issues

To report bugs and request new features, please contact the Phantom support team.

If you find a security issue in Phantom, please follow responsible disclosure and report it to us via Phantom or by encrypted email, we will try to respond as quickly as possible. You can find the contact details at phantom.org/contact (section "Security").

# ⚙ Source Code Release Policy

This source code repository will be updated for every public non-beta release. There will be one commit per released version.

Commits are signed using PGP. See [SECURITY.md](https://github.com/nordbearbotdev/phantom-ios/blob/main/SECURITY.md) for more information.

# 📖 License Checks

While the source code for Phantom for iOS is published under an open source license, Phantom is still a paid app. To run the app in combination with our official server infrastructure, you must have bought a license on the App Store.

The app uses two different license check types, depending on the target app:

### 📻 App Store Licensing
When creating a new Phantom ID using the Phantom app bought on the App Store, the app sends the digitally signed App Store receipt to the directory server. This allows the server to verify that you have indeed bought the app, without being able to identify you.

This means that a self-compiled app using the Phantom scheme cannot be used to create a new Phantom ID. You can, however, use an app that was purchased in the App Store to create an ID and then export a backup. This backup can then be imported into the self-compiled app.

Note that the ID creation endpoint is monitored for abuse.

# 🔧 Phantom Work
If you build the Phantom Work target, credentials from the Phantom Work subscription must be provided in order to use the app.


# ⌨ Schemes
* Phantom builds and tests the consumer app. (recommended for local testing)
* PhantomWork builds and tests the enterprise version of our app.


# Building

To get started you need a [Mac](https://www.apple.com/mac/), [Xcode](https://developer.apple.com/xcode/) (12.2) and a (free) [Apple Developer Account](https://developer.apple.com/programs/).

# 1. Install Dependencies

1. Install [Carthge](https://github.com/Carthage/Carthage)

`brew install carthage`
 
 
2. If your Xcode installation is fresh make sure that command line tools are selected

`sudo xcode-select --switch /Applications/Xcode.app`

3. Install and build the dependencies

`./scripts/build.sh --dependencies`

This checks out and builds Carthage dependencies, and downloads debug & release WebRTC binaries and SaltyRTC if they are missing. (The script uses a workaround for limitations of [Carthage with Xcode 12](https://github.com/Carthage/Carthage/blob/master/Documentation/Xcode12Workaround.md) If you want to build WebRTC yourself see [BUILD_WEBRTC.md](https://github.com/threema-ch/threema-ios/blob/main/BUILD_WEBRTC.md).)

# 2. Setup Project
You can either build the Threema app (recommended) or Threema Work app.

Note: These setups are for running in the simulator.

Threema (recommended)
Open Threema.xcproject in Xcode
Repeat these steps for the Threema and ThreemaShareExtension target
Check "Automatically manage signing" and confirm it ("Enable Automatic")
Set "Team" to the team of your developer account
Choose Threema as scheme and a simulator
Threema Work
Open Threema.xcproject in Xcode
Repeat these steps for the Threema Work and ThreemaForWorkShareExtension target
Check "Automatically manage signing" and confirm it ("Enable Automatic")
Set "Team" to the team of your developer account
Choose Threema Work as scheme and a simulator
3. Build and Run
Build and Run
To create a Threema ID see "App Store Licensing" above. (You can cancel the "Sign in with Apple ID" dialogue and import a Threema ID backup.)
Note: We currently don't support Apple Silicon based Macs, because of current limitations of Carthage with Xcode 12 and our current WebRTC builds.

# Testing

See "Building" for setting up a running environment. Before running the tests check if you can sucessfully build and run the app.

Choose Threema as scheme to run the app and framework tests.
Choose ThreemaWork as scheme to run Threema Work specific tests.
Reproducible Builds
Due to restrictions by Apple, it’s no easy task to offer reproducible builds for iOS, but we are currently evaluating possible ways to also support reproducible builds for this platform.

# Code Organization / Architecture

Before digging into the codebase, you should read the Cryptography Whitepaper to understand the design concepts.

These are the most important groups of the Xcode project:

`PhantomFramework` : Shared code between the main app and extensions

`Phantom: Code of both apps` (Phantom and Phantom Work)

`PhantomShareExtension`: Code of share extension

`Phantom{Framework}Tests`: Test files

Our dependencies are manged with Carthage. Additionally we use WebRTC based on binaries hosted on our servers. If you want to build WebRTC yourself see BUILD_WEBRTC.md.

# Contributions

We accept GitHub pull requests. Please refer to https://phantom.org/open-source/contributions for more information on how to contribute.

# License

Phantom for iOS is licensed under the GNU Affero General Public License v3.

`Copyright (c) 2021 Phantom GmbH

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License, version 3,
as published by the Free Software Foundation.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program. If not, see <https://www.gnu.org/licenses/>.`

The full license text can be found in [LICENSE.txt](https://github.com/nordbearbotdev/phantom-ios/blob/main/LICENSE.txt).

If you have questions about the use of self-compiled apps or the license in general, feel free to contact us. We are publishing the source code in good faith, with transparency being the main goal. By having users pay for the development of the app, we can ensure that our goals sustainably align with the goals of our users: Great privacy and security, no ads, no collection of user data!







