# dxw's local environment setup

## Who's this for?

Are you a developer or anyone else who works with in-development software on
your local machine? Do you have a new machine that you're setting up from
scratch? Then this repository can help you get set up quickly!

It's written with dxw people in mind, but if you're not working here and this is
useful to you, open an issue to let us know! Bear in mind, though, that while
we'd love for this to be useful for everyone, we'll only accept changes that
make things better for our folks. Feel free to create a fork for your own needs
though!

## What does this do?

Running the install script in this repository will install everything you need
to work on most dxw software, set up your terminal, and some other stuff. You
might need other bits and pieces for a project, but this should do the basics.
It's a guided process, so you'll need to stick around and follow the
instructions.

**This is a set of suggestions and recommendations only!** If you disagree with
any of what it does, please feel free to change it before or after doing this
set up (see step 4 below).

## How do I use this?

1. Open a terminal!

1. Decide where you want code projects to live and create the directory
   structure. We recommend having a dedicated directory somewhere easy to reach
   from your home directory. For example, if you wanted to use repository URLs
   for your directory structure (and knowing what's next in these instructions)
   you might run

   ```sh
   mkdir -p ~/code/github.com/dxw
   ```

1. Clone this repository:

   ```sh
   git clone https://github.com/dxw/local-env.git ~/code/github.com/dxw/local-env
   ```

1. If you're a developer and have opinions about how you want things done, you
   should probably have a look at what the `install` script does before you
   carry on. Please go ahead and make local changes to suit your needs! These
   defaults are intended as suggestions only. You're the person who'll be using
   your machine, so make it work for you.

1. Run the install script and follow the instructions:

   ```sh
   ~/code/github.com/dxw/local-env/install
   ```

   This will take some time and you'll need to do things at points, so you might
   want to set this going while you do something else and come back to check on
   it every few minutes.

1. Celebrate your new environment by giving feedback on the process in Slack!

## Troubleshooting

If you find that you get errors from `brew install`, such as:

```sh
 % brew install ...
Error: Cannot install in Homebrew on ARM processor in Intel default prefix (/usr/local)!
Please create a new installation in /opt/homebrew using one of the
"Alternative Installs" from:
  https://docs.brew.sh/Installation
You can migrate your previously installed formula list with:
  brew bundle dump
%
```

then you will need to update your shell configuration. Open your `~/.zshrc` or
`~/.bashrc` file and add the following line:

```sh
export PATH=/opt/homebrew/bin:$PATH
```

Then reload your configuration in your terminal with either:

```sh
source ~/.zshrc
```

or:

```sh
source ~/.bashrc
```

and run `brew install` again.

## This doesn't work!

Let us know!

If you're a developer, have a go at fixing the issue you're hitting and open a
pull request. If you're not, or you get stuck, find a developer to help you!
