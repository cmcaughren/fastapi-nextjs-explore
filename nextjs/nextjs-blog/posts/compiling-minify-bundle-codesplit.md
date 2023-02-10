---
title: 'Compiling, Minifying, Bundling, Code Splitting'
date: '2022-10-10'
chapter: 'How Next.js Works'
order: '1.2'
---

## What is Compiling?
Developers write code in languages that are more developer-friendly such as JSX, TypeScript, and modern versions of JavaScript. While these languages improve the efficiency and confidence of developers, they need to be compiled into JavaScript before browsers can understand them.

Compiling refers to the process of taking code in one language and outputting it in another language or another version of that language.

In Next.js, compilation happens during the development stage as you edit your code, and as part of the build step to prepare your application for production.
[Source: Next.js Tutorial](https://nextjs.org/learn/foundations/how-nextjs-works/compiling)


## What is Minifying?
Developers write code that is optimized for human readability. This code might contain extra information that is not necessary for the code to run, such as comments, spaces, indents, and multiple lines.

Minification is the process of removing unnecessary code formatting and comments without changing the code’s functionality. The goal is to improve the application’s performance by decreasing file sizes.

In Next.js, JavaScript and CSS files are automatically minified for production.

[Source: Next.js Tutorial](https://nextjs.org/learn/foundations/how-nextjs-works/minifying)

## What is Bundling?
Developers break up their application into modules, components, and functions that can be used to build larger pieces of their application. Exporting and importing these internal modules, as well as external third-party packages, creates a complex web of file dependencies.

Bundling is the process of resolving the web of dependencies and merging (or ‘packaging’) the files (or modules) into optimized bundles for the browser, with the goal of reducing the number of requests for files when a user visits a web page.

[Source: Next.js Tutorial](https://nextjs.org/learn/foundations/how-nextjs-works/bundling)

## What is Code Splitting?
Developers usually split their applications into multiple pages that can be accessed from different URLs. Each of these pages becomes a unique entry point into the application.

Code-splitting is the process of splitting the application’s bundle into smaller chunks required by each entry point. The goal is to improve the application's initial load time by only loading the code required to run that page.

Next.js has built-in support for code splitting. Each file inside your pages/ directory will be automatically code split into its own JavaScript bundle during the build step.

Further:

* Any code shared between pages is also split into another bundle to avoid re-downloading the same code on further navigation.
* After the initial page load, Next.js can start pre-loading the code of other pages users are likely to navigate to.
* Dynamic imports are another way to manually split what code is initially loaded.

[Source: Next.js Tutorial](https://nextjs.org/learn/foundations/how-nextjs-works/code-splitting)