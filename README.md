
This is a likely futile attempt to breath life back into p2c, the only Pascal-to-C compiler  
that works reliably.

### tldr

+ clone repo
+ cd into p2c, and run `make`
+ if you have an executable named `p2c` (or `p2c.exe`), as well as a `libp2c.a`, you're probably good to go.
+ try some of the examples in `./examples/`. For example, `basic.pas` should convert to `basic.c` without errors. 

P2C currently has a very lousy way of searching for its rc file `p2crc`, so this repo includes a script named `p2cbin.rb`, that sets `$P2C_HOME` correctly. just symlink it into your `$PATH`

    ln -sfv $PWD/p2cbin.rb ~/bin/p2c

After that, invoke `p2c` as per usual.

### some notes on the current state of things

what i've done so far:  


 + some code cleanup.
    
    + lots of functions used K&R prototypes, now they're proper prototypes.
    +  tons of superfluous macros.
    +  poor, or straight up incorrect type checking (ALLOC macros used to cast from `int` to `char*` to `void*`!).
    +  ran most of the code through `clang-tidy` and `clang-format`.

 + what still needs to be done:

   + const-correctness is still basically nonexistant.
   +  `struct`s, `typedef`s, `typedef`'d `struct`s, macros need to be moved into a header file.
   +  the code is a serious mess. it's no fun.
   +  improve emitted code - some semantics appear unlikely to be portable.
   +  p2c ***WILL*** break *violently* when encountering CRLF ("\r\n") files. 
   +  get rid of the completely pointless macros that P2C uses absolutley everywhere (`Static` vs `static`, etc. are all remnants of compilers before any C standards existed).
   +  try to inline `PASCAL_MAIN()` (possible, but probably not worth it).
   +  try to inline most of the libp2c functions (unlikely to work).

+ what works so far:

  + code should compile fairly-ish cleanly-ish on a Linux-compatible environment (including Cygwin)
  + emits arguably portable code
  + with the exception of rare cases, will convert even ancient pascal code that uses absolute addresses (those *may* work in a DOS, or CPM emulator)


+ ideas for the future:

   + support DELPHI (good luck ...)
   + emit C++ code

#### other files of interest:

  + **./README.md**
  	+ this file.
  
  + **./COPYING**
	+ license information (GNU GPL). 

  + **./NOTES**
  	+ original notes from the original dist. most probably still apply.

  + **./p2cbin.rb**
  	+  helper script

  + **./p2crc**
  	+ configuration file. uses some sensible defaults. kind of a mess to read/write.

  + **./string.pas**, **./system.imp**, **./turbo.imp**
 	+ implementation details for p2c. these describe functions/types/interfaces, nothing more.

----

Below is the original readme, as it was distributed with 1.21alpha-07, from 1993.

----

```
This directory contains "p2c" version 1.21alpha-07.Dec.93, a Pascal to C translator.

"p2c"  Copyright 1989, 1990, 1991, 1992, 1993  Free Software Foundation, Inc.

Written and maintained by:   Dave Gillespie
			     c/o Synaptics, Inc.
			     2698 Orchard Parkway
			     San Jose CA 95134
			     daveg@synaptics.com, uunet!synaptx!daveg


This program is distributed under the terms of the GNU License Agreement.
See the file src/COPYING for details.

The GNU License Agreement restrictions do _not_ apply to code generated
by p2c, nor to the p2c run-time files "p2clib.c" and "p2c.h".



QUICK INSTRUCTIONS

The top-level Makefile in this directory tree knows how to build
p2c and run it on some example programs.  The compiled p2c will be
"installed" in this directory tree rather than in public directories.
(For a full public installation, see the instructions below.)
Just type "make test" to build p2c and run the examples.



FULL INSTALLATION INSTRUCTIONS

For a complete system, you must:

   a) Create a home directory for p2c, such as /usr/lib/p2c.  The exact
      location does not matter, as long as p2c knows how to find it.

   b) Create an include directory, such as /usr/include/p2c.  If you are
      unable to arrange for an include directory, you can edit sys.p2crc
      so as not to require one, or compile translated code with a
      suitable -I flag.

   c) Install the executable "p2c" in /usr/bin or elsewhere on the
      standard search path.  You may also wish to install "p2cc",
      a Perl script for running p2c as a Pascal compiler.

   d) Install the run-time library "libp2c.a" in /usr/lib or elsewhere
      on the standard library search path.

   e) Install the Unix manual entries "p2c.1" and "p2cc.1" in
      /usr/man/man1.  If you have a "man1.Z" directory instead
      (for compressed man pages) you will have to edit the Makefile
      to use a "compress" command.

   f) Install the necessary files in the p2c home directory.

The Makefile is initially set up to create a private version of p2c in
the p2c distribution directory.  Just "cd src" and "make install" to
perform the above steps.  This will place the p2c executable, run-time
library, include directory, and man page in the "home" subdirectory of
the distribution directory.  The man page will be in human-readable form.

To compile code that has been translated by this private version of p2c,
use the command:

    cc -I. foo.c libp2c.a

(assuming "home," i.e., HOMEDIR, is the current directory.)

The "examples" subdirectory contains a few sample Pascal programs and
a Makefile to translate and compile them.

To install p2c for public use, edit the Makefile to indicate the correct
directory names.  Suggested names are included as comments.  Also change
MANFILE as shown to store the man page in the proper form for the "man"
command.

    HOMEDIR      default /usr/lib/p2c       Home directory
    INCDIR       default /usr/include/p2c   Include directory
    BINDIR       default /usr/bin           Directory for "p2c" executable
    LIBDIR       default /usr/lib           Directory for "libp2c.a" library
    MANDIR       default /usr/man/man1      Directory for "p2c.1" manual page

Make sure the home and include directories have been created and are
writable, and that the bin, lib, and man directories are writable.
(You may have to be root to do this.)  Recompile "p2c" with another
"make install".  Be sure "trans.c" is recompiled with the new value
of HOMEDIR; you can ensure this by doing "make newhome" before
"make install".  You can always type "make" with no arguments to
compile without installing.

HP Pascal Workstation System users will want to copy all of ../HP/include
into the new p2c include directory, and copy all of ../HP/import into
the p2c home directory.  You will have to write emulations for the
functions you use out of these modules.  (The HP directories are
present in the ftp distribution only---they have been omitted from
the shar'd version to save space.)

Incomplete interface texts for standard Turbo units are included in
turbo.imp.  Turbo users will have to flesh these out and write emulations
for whatever parts of the Turbo runtime library they need.

If you wish to edit various system-wide configuration parameters, it is
better to put them in loc.p2crc than in sys.p2crc.  As an example, on a
Turbo-oriented environment you may wish to add

    Language Turbo

to the loc.p2crc file to replace the normal default (HP Pascal).



PORTABILITY

P2c was originally developed on a homebrew C compiler on the HP Pascal
Workstation operating system.  Current development takes place on Sparcs
using Sun OS.  The translator has been compiled and used on a wide
variety of Unix-like machines.

P2c was developed on systems with 32-bit ints, so porting to machines
with 16-bit integers may be a bit rough.  If you are on a PC, it is
preferable to use a 32-bit compiler such as "djgpp", a port of the
GNU C compiler.  P2c might work on a 16-bit compiler that understood
ANSI function prototypes.

Please note that code _generated_ by p2c works with either size of
int even though p2c itself may not.

The Macintosh is not officially supported for p2c, but Guenther
Sawitzki <gs@statlab.uni-heidelberg.de> does some Mac support.

Because p2c was developed to run under Unix, it is sloppy about memory
allocation.  Some data structures are allocated but never freed.  Profiles
show that the waste is not too great in most cases, but if it is a problem
you may have to write a garbage collector (this shouldn't be too hard if you
only run the collector after translating each procedure).
```
