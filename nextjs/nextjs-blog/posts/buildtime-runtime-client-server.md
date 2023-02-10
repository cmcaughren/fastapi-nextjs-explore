---
title: 'Build Time and Runtime, Client and Server'
date: '2022-10-10'
chapter: 'How Next.js Works'
order: '1.3'
---

## Build Time and Runtime
**Build time** (or build step) is the name given to a series of steps that prepare your application code for production.

When you build your application, Next.js will transform your code into production-optimized files ready to be deployed to servers and consumed by users. These files include:

HTML files for statically generated pages
JavaScript code for rendering pages on the server
JavaScript code for making pages interactive on the client
CSS files

**Runtime** (or request time) refers to the period of time when your application runs in response to a user’s request, after your application has been built and deployed.

[Source: Next.js Tutorial](https://nextjs.org/learn/foundations/how-nextjs-works/buildtime-and-runtime)

## Client and Server
In the context of web applications, the **client** refers to the browser on a user’s device that sends a request to a server for your application code. It then turns the response it receives from the server into an interface the user can interact with.

**Server** refers to the computer in a data centre that stores your application code, receives requests from a client, does some computation, and sends back an appropriate response.

[Source: Next.js Tutorial](https://nextjs.org/learn/foundations/how-nextjs-works/client-and-server)
