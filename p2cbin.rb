#!/usr/bin/ruby

# helper script to symlink into $PATH.
# kind of necessary until rc-loading is fixed/improved.

begin
  thisdir = __dir__
  ENV["P2C_HOME"] = thisdir
  exe = File.join(thisdir, "p2c")
  exec(exe, *ARGV)
end

