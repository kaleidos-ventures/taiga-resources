---
title: "How Can I Contribute"
slug: how-can-i-contribute
date: 2020-10-05T11:22:38+02:00
draft: false
categories:
  - "Extend Taiga"
thumbnail: "images/how-to-contribute.png"
---

There are many different ways to contribute to Taiga's development, just find the one that best fits with your skills. Examples of contributions we would love to receive include:

- **Bug reports**
- **Code patches, enhancements**
- **Contrib Plugins**
- **Documentation improvements**
- **Translations**
- **UI enhancements**

All of these ways may affect the API, the UI, language localization... or other parts of Taiga. There isn't a single way to contribute, and we'll be happy to help you with your contributions.

Big features are also welcome but if you want to see your contributions included in Taiga codebase we strongly recommend you start by initiating a chat through our [mailing list](https://groups.google.co.uk/d/forum/taigaio).


## Developer Certificate of Origin + License

> Contributing to Taiga by adding code to its repositories (typically a Pull Request) implies acceptance of the DCO and License terms.

By contributing to Kaleidos Ventures SL., You accept and agree to the following terms and conditions for Your present and future Contributions submitted to Kaleidos Ventures SL. Except for the license granted herein to Kaleidos Ventures SL. and recipients of software distributed by Kaleidos Ventures SL., You reserve all right, title, and interest in and to Your Contributions.

All Contributions are subject to the following [DCO + License terms](https://github.com/kaleidos-ventures/taiga-back/blob/main/DCOLICENSE).

## Bug reports

Bugs are about code, but **not only about code**. You can find a bug in the UX, the design, the translations, the documentation. If you **find a bug** in Taiga you can always report it:

- in [Taiga issues](https://tree.taiga.io/project/taiga/issues). **This is the preferred way**
- in GitHub we have different projects with issues as well; you can create an issue in the corresponding repository:

  - taiga-back: [taiga-back github issues](https://github.com/kaleidos-ventures/taiga-back/issues)
  - taiga-front: [taiga-front github issues](https://github.com/kaleidos-ventures/taiga-front/issues)
  - taiga-front-dist: [taiga-front-dist github issues](https://github.com/kaleidos-ventures/taiga-front-dist/issues)
  - taiga-events: [taiga-events github issues](https://github.com/kaleidos-ventures/taiga-events/issues)
  - taiga-protected: [taiga-protected github issues](https://github.com/kaleidos-ventures/taiga-protected/issues)
  - taiga-docker: [taiga-docker github issues](https://github.com/kaleidos-ventures/taiga-docker/issues)
  - taiga-doc: [taiga-doc github issues](https://github.com/kaleidos-ventures/taiga-doc/issues)
  - taiga-resources: [taiga-resources github issues](https://github.com/kaleidos-ventures/taiga-resources/issues), which is the repository for this web.
- send us an email to support@taiga.io if is a bug related to [tree.taiga.io](https://tree.taiga.io)
- send us an email to security@taiga.io if is a **security bug**.

One of our fellow Taiga developers will search, find and hunt it as soon as possible.

**Reporting a bug**: Please, before reporting a bug, take time to write down as much detail as possible: explain why this is a bug for you and how can we reproduce it. It'll be useful as well to know your Operating System and your browser and version. If it's possible, attach a screenshot to give more context to the bug.

Usually, it takes less time to fix a bug if the developer knows how to find it. Thanks to that information, we'll be faster fixing any bug.

**Localization Bugs**: Taiga use Weblate to manage the i18n files so don't submit a pull request to those files (except -en.json). To fix a translation, just access our team of translators, set up an account in the [Taiga Weblate project](https://hosted.weblate.org/projects/taiga/) and start contributing.

## Code patches, enhacements

Taiga will always be glad to receive code patches to update, fix or improve its code.

If you know how to improve our code base or you found a bug, a security vulnerability or a performance issue and you think you can solve it, we will be very happy to accept your contribution.

You probably want to make yourself comfortable with the development environment first, but we have defined a concrete workflow for these kinds of contributions:

1. **It’s essential to have an issue to associate your PR with***, so if it does not exist, you will have to create it in Taiga (preferably) or in GitHub.

   This issue should have a complete description of the functionality you’d like to develop or the bug you intend to solve, how it should work and for which profiles.
2. **In the issue, let us know your intention to work on it**, and we will contact you to determine the priority and needs. 

   The functionality will require some wireframes or ideas to be developed correctly. A good UX its an essential part of Taiga success. If the issue requires it, the Taiga team will participate in its development with you, providing the necessary designs and wireframes.
3. The last step it to **create the Pull Request**. Remember to add some tests, a good description and screenshots are welcome too. 

   Once the pull request is done, someone else from the team will review the code to ensure that it fits with the good practices and styles. If it does, the PR will be merged and will be on the next Taiga release.

> Don't forget to add your name to `AUTHORS.rst` file!

If you think you are not able to do one or more of the parts of the process, your contribution is still welcome, but we cannot ensure that it will make it soon into the Taiga core anytime soon. It will depend on our priority backlog.

Thanks a lot! It is really great that we could make Taiga better with the help of the community.

## Contrib Plugins

Taiga supports contrib plugins to add or overwrite some functionalities. You can create your own contribs and share the the community or use any of the [contrib plugins]({{< ref "contributions" >}}).

## Documentation improvements

Currently, we have authored three main documentation hubs:

- **[API](https://docs.taiga.io/api.html)**: Our API documentation and reference for developing from Taiga API.
- **[Documentation](https://docs.taiga.io/)**: If you need to install Taiga on your own server, this is the place to find some guides.
- **[Taiga Resources](https://resources.taiga.io)**: This page is intended to be the support reference page for the users.

If you find some errors, or want to propose changes to improve readability, you can create issues or submit code changes to these repositories:
- [Taiga documentation](https://github.com/kaleidos-ventures/taiga-doc)
- [Taiga resources](https://github.com/kaleidos-ventures/taiga-resources)

## Translations

We are eager to get your help translating Taiga. It's easy (and fun!): just access our team of translators with the link below, set up an account in Weblate and start contributing. Join us to make sure your language is covered! **[Help Taiga to translate content](https://hosted.weblate.org/projects/taiga/ "Help Taiga to translate content")**

**Localization Bugs**: Taiga use Weblate to manage the i18n files so don't submit a pull request to those files (except -en.json). To fix a translation, just access our team of translators, set up an account in the [Taiga Weblate project](https://hosted.weblate.org/projects/taiga/) and start contributing.

## UI enhancements

Taiga is made for developers and designers. We care enormously about UI because usability and design are both critical aspects of the Taiga experience.

If you have some ideas to make Taiga UI better, we will love to receive your feedback. Please send us your enhancement, with the reason and, if possible, an example. Our design and UX team will review your proposal as soon as possible. We recommend you to use our [mailing list](https://groups.google.co.uk/d/forum/taigaio) so we can have a lot of different opinions and debate.
