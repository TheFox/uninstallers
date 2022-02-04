#!/usr/bin/env bash

# Uninstall radare2
# unix-like reverse engineering framework and commandline tools security
# https://github.com/radare/radare2
# http://www.radare.org/r/


# Ask for the administrator password upfront.
echo 'ask for sudo'
sudo -v

# Keep-alive: update existing `sudo` time stamp until script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

sudo rm -vf /usr/local/bin/r2
sudo rm -vf /usr/local/bin/r2agent
sudo rm -vf /usr/local/bin/r2pm
sudo rm -vf /usr/local/bin/rabin2
sudo rm -vf /usr/local/bin/radare2
sudo rm -vf /usr/local/bin/radiff2
sudo rm -vf /usr/local/bin/rafind2
sudo rm -vf /usr/local/bin/ragg2
sudo rm -vf /usr/local/bin/rahash2
sudo rm -vf /usr/local/bin/rarun2
sudo rm -vf /usr/local/bin/rasm2
sudo rm -vf /usr/local/bin/rax2

sudo rm -vf /usr/local/lib/libr.a
sudo rm -vf /usr/local/lib/libr.dylib
sudo rm -vf /usr/local/lib/libr2.2.6.0.dylib
sudo rm -vf /usr/local/lib/libr2.dylib
sudo rm -vf /usr/local/lib/libr_anal.*
sudo rm -vf /usr/local/lib/libr_asm.*
sudo rm -vf /usr/local/lib/libr_bin.*
sudo rm -vf /usr/local/lib/libr_bp.*
sudo rm -vf /usr/local/lib/libr_config.*
sudo rm -vf /usr/local/lib/libr_cons.*
sudo rm -vf /usr/local/lib/libr_core.*
sudo rm -vf /usr/local/lib/libr_crypto.*
sudo rm -vf /usr/local/lib/libr_debug.*
sudo rm -vf /usr/local/lib/libr_egg.*
sudo rm -vf /usr/local/lib/libr_flag.*
sudo rm -vf /usr/local/lib/libr_fs.*
sudo rm -vf /usr/local/lib/libr_hash.*
sudo rm -vf /usr/local/lib/libr_io.*
sudo rm -vf /usr/local/lib/libr_lang.*
sudo rm -vf /usr/local/lib/libr_magic.*
sudo rm -vf /usr/local/lib/libr_parse.*
sudo rm -vf /usr/local/lib/libr_reg.*
sudo rm -vf /usr/local/lib/libr_search.*
sudo rm -vf /usr/local/lib/libr_shlr.*
sudo rm -vf /usr/local/lib/libr_socket.*
sudo rm -vf /usr/local/lib/libr_syscall.*
sudo rm -vf /usr/local/lib/libr_util.*

sudo rm -vf /usr/local/lib/pkgconfig/r_anal.pc
sudo rm -vf /usr/local/lib/pkgconfig/r_asm.pc
sudo rm -vf /usr/local/lib/pkgconfig/r_bin.pc
sudo rm -vf /usr/local/lib/pkgconfig/r_bp.pc
sudo rm -vf /usr/local/lib/pkgconfig/r_config.pc
sudo rm -vf /usr/local/lib/pkgconfig/r_cons.pc
sudo rm -vf /usr/local/lib/pkgconfig/r_core.pc
sudo rm -vf /usr/local/lib/pkgconfig/r_crypto.pc
sudo rm -vf /usr/local/lib/pkgconfig/r_debug.pc
sudo rm -vf /usr/local/lib/pkgconfig/r_egg.pc
sudo rm -vf /usr/local/lib/pkgconfig/r_flag.pc
sudo rm -vf /usr/local/lib/pkgconfig/r_fs.pc
sudo rm -vf /usr/local/lib/pkgconfig/r_hash.pc
sudo rm -vf /usr/local/lib/pkgconfig/r_io.pc
sudo rm -vf /usr/local/lib/pkgconfig/r_lang.pc
sudo rm -vf /usr/local/lib/pkgconfig/r_magic.pc
sudo rm -vf /usr/local/lib/pkgconfig/r_parse.pc
sudo rm -vf /usr/local/lib/pkgconfig/r_reg.pc
sudo rm -vf /usr/local/lib/pkgconfig/r_search.pc
sudo rm -vf /usr/local/lib/pkgconfig/r_socket.pc
sudo rm -vf /usr/local/lib/pkgconfig/r_syscall.pc
sudo rm -vf /usr/local/lib/pkgconfig/r_util.pc

sudo rm -vf /usr/local/share/man/man1/r2*
sudo rm -vf /usr/local/share/man/man1/rabin2.1
sudo rm -vf /usr/local/share/man/man1/radare2.1
sudo rm -vf /usr/local/share/man/man1/radiff2.1
sudo rm -vf /usr/local/share/man/man1/rafind2.1
sudo rm -vf /usr/local/share/man/man1/ragg2.1
sudo rm -vf /usr/local/share/man/man1/rahash2.1
sudo rm -vf /usr/local/share/man/man1/rarun2.1
sudo rm -vf /usr/local/share/man/man1/rasm2.1
sudo rm -vf /usr/local/share/man/man1/rax2.1
sudo rm -vf /usr/local/share/man/man7/esil.7


sudo rm -vfr /usr/local/include/libr
sudo rm -vfr /usr/local/lib/radare2
sudo rm -vfr /usr/local/share/doc/radare2
sudo rm -vfr /usr/local/share/radare2

echo 'done'
