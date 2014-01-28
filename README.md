Salt
====

Salt is a sophisticated decentralized package manager for Crystal.

Features
--------

+ Uses GitHub as a package source
+ Written in Crystal itself
+ Treats the compiler as a package
+ Treats the standard library as a separate package
+ Installing Salt, you also install Crystal
+ Praises [semantic versioning](http://semver.org)

Package structure
-----------------

```
├── package
│    ├── src
│    │    ├── package.cr
│    │    └── package
│    │         ├── cli.cr
│    │         ├── parser.cr
│    │         └── version.cr
│    ├── spec
│    │    └── ...
│    ├── package.cr
│    ├── LICENSE
│    └── README
```

License
-------

Under [MIT](https://github.com/somu/salt/blob/master/LICENSE).