---
title: 'What is the Network?'
date: '2022-10-10'
chapter: 'How Next.js Works'
order: '1.5'
---

It’s helpful to know where your application code is stored and run once it’s deployed to the network. You can think of the network as linked computers (or servers) capable of sharing resources. In the case of a Next.js application, your application code can be distributed to **origin servers**, **Content Delivery Networks (CDNs)**, and **the Edge**. Let’s see what each of these are:

## Origin Servers
As we discussed earlier, the server refers to the main computer that stores and runs the original version of your application code.

We use the term **origin** to distinguish this server from the other places application code can be distributed to, such as **CDN servers** and **Edge servers**.

When an origin server receives a request, it does some computation before sending a response. The result of this computation work can be moved to a CDN (Content Delivery Network).

## Content Delivery Network
CDNs store static content (such as HTML and image files) in multiple locations around the world and are placed between the client and the origin server. When a new request comes in, the closest CDN location to the user can respond with the cached result.

This reduces the load on the origin because the computation doesn’t have to happen on each request. It also makes it faster for the user because the response comes from a location geographically closer to them.

In Next.js, since pre-rendering can be done ahead of time, CDNs are well suited to store the static result of the work - making content delivery faster.

## The Edge
The Edge is a generalized concept for the fringe (or edge) of the network, closest to the user. CDNs could be considered part of "the Edge" because they store static content at the fringe (edge) of the network.

Similar to CDNs, Edge servers are distributed to multiple locations around the world. But unlike CDNs, which store static content, some Edge servers can run code.

This means both **caching** and **code execution** can be done at the Edge closer to the user.

By running code at the Edge, you can move some of the work that was traditionally done client-side or server-side to the Edge (see examples with Next.js here). This can make your application more performant because it reduces the amount of code sent to the client, and part of the user's request does not have to go all the way back to the origin server - thus reducing latency.

In Next.js, you can run code at the Edge with Middleware, and soon with React Server Components.

[Source: Next.js Tutorial](https://nextjs.org/learn/foundations/how-nextjs-works/cdns-and-edge)
