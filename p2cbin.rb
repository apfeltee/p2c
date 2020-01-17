#!/usr/bin/ruby

require "optparse"

# helper script to symlink into $PATH.
# kind of necessary until rc-loading is fixed/improved.

FORWARDME = {
  "-q" => "be quiet",
  "-V" => "be verbose",
  "-a" => "produce ansi C",
  "-e" => "add pascal source surrounded by #ifdefs",
}

def postfailcheck(pwd, exe, exitcode)
  base = File.basename(exe)
  stackdumpfile = File.join(pwd, sprintf("%s.stackdump", base))
  if File.file?(stackdumpfile) && (exitcode.to_i > 100) then
    $stderr.printf(
      "\n\n" +
      "** running stackdbg (exitcode = %d) ... **\n" +
      "\n", exitcode.to_i
    )
    system("stackdbg", exe, stackdumpfile)
  end
end

begin
  gdb = false
  thisdir = __dir__
  ENV["P2C_HOME"] = thisdir
  exe = File.join(thisdir, "p2c.exe")
  pwd = Dir.pwd
  cmd = []
  extra = []
  OptionParser.new{|prs|
    prs.on("-h", "--help", "this help"){
      puts(prs.help)
      exit()
    }
    prs.on("-S", "run with strace"){
      cmd.push("strace", "-o", File.join(Dir.pwd, "strace.log"), "--")
    }
    prs.on("-g", "-D", "run p2c in gdb"){
      cmd.push("gdb", "-args")
    }

    ### forwarded options
    prs.on("-o<file>", "write output to <file>"){|v|
      extra.push("-o", v)
    }
    prs.on("-H<file>", "write header to <file>"){|v|
      extra.push("-h", v)
    }
    FORWARDME.each do |opt, desc|
      prs.on(opt, desc) do
        extra.push(opt)
      end
    end
  }.parse!
  cmd.push(exe, *extra, *ARGV)
  $stderr.printf("cmd: %s\n", cmd.map(&:dump).join(" "))
  if not system(*cmd) then
    postfailcheck(pwd, exe, $?)
  end
end

