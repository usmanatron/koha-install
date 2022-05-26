# Koha Installation Scripts

Heavily based on the installation guides on the Koha Wiki.  The goal is to make it semi-automated by running shell scripts.

## Sources

[Installation - Koha Wiki](https://wiki.koha-community.org/wiki/Debian)
[koha-sites.conf](https://github.com/Koha-Community/Koha/blob/master/debian/templates/koha-sites.conf)

## Usage

Here's how to actually work with this

### Preparation

Have a look at the `koha-sites.conf` template linked above and work out what the answers should be.  In particular, have a think about what you want the domains to be!

Once you've got your domains planned, you'll need to add the relevant DNS Records.

Decide on a `library name` - this is required in the scripts.  No spaces!

### Clone

Easiest thing is to clone this repo onto the target machine.

### Go

Run the first script!  Each one tells you what you have to do before running the next one.

## Assumptions

* You're using the latest Debian
* This won't install a database for you. That said there's an example Dockerised MariaDB in the `database` folder.

## License

MIT
