# Profile
Profile config for Unix-like systems

## Install

1) Clone this repo with _--recurse-submodules_

   `git clone --recurse-submodules git@github.com:jburnett/profile`

2) Review [dependencies](#dependencies) to determine if pathing is correct
3) Run _install-profile.sh_

### Dependencies

The install script expects this repo to be at $HOME/src/github.com/jburnett/profile. Adapt the path for your config prior to installing.

## References

Execution order
.zshenv - read every time, but generally best to just use .zprofile & .zshrc
.zprofile - at login
.zshrc - interactive
.zlogin - similar to .zprofile, but read after .zshrc
.zlogout - at logout


See [What should/shouldn't go in .zshenv, .zshrc, .zlogin, .zprofile, .zlogout?](https://unix.stackexchange.com/questions/71253/what-should-shouldnt-go-in-zshenv-zshrc-zlogin-zprofile-zlogout) for more details on each file.