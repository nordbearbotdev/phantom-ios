# 👻 Phantom for iOS

[Phantom Logo](https://yt3.ggpht.com/a/AGF-l78YxbbrIg8639Hf4YZwjB2FiiRH3p-aIZS3fQ=s900-c-k-c0xffffffff-no-rj-mo]()

[This repository](https://github.com/nordbearbotdev/phantom-dev) contains the complete source code of [Phantom](https://phantom.org) for iOS.

# Table of Contens

*
*
*
*
*
*
*
*
*
*
*

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


# Schemes

* Phantom builds and tests the consumer app. (recommended for local testing)
* PhantomWork builds and tests the enterprise version of our app.


# Building

To get started you need a [Mac](https://www.apple.com/mac/), [Xcode](https://developer.apple.com/xcode/) (12.2) and a (free) [Apple Developer Account](https://developer.apple.com/programs/).

# 1. Install Dependencies

1. Install 
