Inceptum
====

Inceptum is latin for Enterprise. And that's what it is: A framework for the development of enterprise-grade microservices in the Node.js ecosystem.

How to contribute to Inceptum?
--

The best way to get started wroking on Inceptum is to checkout this repository. It contains the rest of the repositories as submodules.

You'll need to install: https://lernajs.io/
After installed you only need to do:

```
git checkout git@github.com:hipagesgroup/inceptum-parent.git
cd inceptum-parent
git submodule init
git submodule update packages/inceptum
git submodule update packages/inceptum-sample
lerna bootstrap
```

And it will install dependencies and link the projects amongst themselves so all your changes are visible immediately between them.

How to commit changes
--

This is a parent project that has several submodules under the ```packages/``` directory. Any change you do to any package you should commit to that git repository.
You shouldn't need to commit anything in this parent project unless you're adding a project or changing files in the root (like this README).

How to get started with Inceptum?
--

The first thing is to have a look at the sample project under packages/inceptum-sample
