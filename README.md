# GemRepublica

Ruby gems are great.  The community of developers is nice.  Contributions are welcome and efforts well-received.

With gemrepublica it becomes even easier to clone the code of a given gem and start hacking.

## Similar Projects

I found out that most functionality is already made available to `gem` itself, realized with plugins (see http://guides.rubygems.org/plugins/).  Let's see how we will consolidate this.

## Installation

Install with:

```sh
    $ gem install gemrepublica
```

## Usage

Currently, gemrepublica ships with a single executable,

  gemrepublica

While `gemrepublica --help` will give you a basic help, you usually want to call it like

```sh
    $ gemrepublica <gem name> <location for clone>
```

This will clone the gems source (if it can be found) to the given location.

For example

```sh
    $ gemrepublica gemrepublica /home/fwolfst/dollies/
```

would create a git clone of this repository in `/home/fwolfst/dollies/gemrepublica`.  It's as easy as that!

Now, why __would__ create?  I did not specify the source code link (see below, in Limitations section).

If you want to work with your private clone, remember that you can

```sh
    $ bundle exec bin/gemrepublica
```

To work with your copy rather than the installed version.

## Rationale

You want to get coding in zero seconds.

## Limitations

* Currently, `gemrepublica` only works if the source code link is specified by the maintainer on the rubygems.org homepage and if it points to a github repository.

* Currently, `gemrepublica` will only clone the HEAD of that github repository.

Unfortunately, the source code link on rubygems.org has to be specified via its interface.  I proposed including it in the Gem-Specification, where I hope it will end one day - probably in the 'metadata' (see https://github.com/rubygems/rubygems/issues/1007).

I also proposed to consume this metadata key on the rubygems.org homepage (see https://github.com/rubygems/rubygems.org/issues/718).

## Naming

We are the people and own code!  And create replica of gems easily.

## Roadmap

- fix TODOs indicated in code comments.
- allow specification of version, check out that tag if existing.
- consider switching to thor or rake.
- play well with git repositories that are not on github.
- allow easy branch creation.
- play well with other VCS like svn or mercurial/hg.
- implement --fork switch.

## Contributing

1. Mail me.
2. Fork it ( https://github.com/[my-github-username]/gemrepublica/fork )
3. Create your feature branch (`git checkout -b my-new-feature`)
4. Commit your changes (`git commit -am 'Add some feature'`)
5. Push to the branch (`git push origin my-new-feature`)
6. Create a new Pull Request
