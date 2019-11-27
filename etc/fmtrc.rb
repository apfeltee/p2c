#!/usr/bin/ruby

class Key
  attr_accessor :name, :comments, :values

  def initialize(str=nil)
    @name = String.new(str == nil ? "" : str)
    @comments = []
    @values = []
  end
end

begin
  databuf = []
  File.open("p2crc", "rb") do |fh|
    ic = 0
    data = fh.read
    keybuf = []
    valbuf = []
    hadkey = false
    curkey = nil
    state = nil
    ostate = nil
    while true do
      if (ic >= data.length) then
        break
      end
      curch  = data[ic]
      prevch = data[ic - 1]
      nextch = data[ic + 1]
      if state == nil then
        if [" ", "\t", "\r"].include?(curch) then
          ostate = state
          state = :space
        elsif curch == "\n" then
          ostate = state
          state = :newline
        elsif curch == '#' then
          ostate = state
          state = :commentline
        else
          ostate = state 
          state = :text
        end
      else
        if (state == :space) || (state == :newline) then
          if ostate == :text then
            #if keybuf.empty? then
              #valbuf.push(curch)
            if curkey == nil then
              if keybuf.empty? then
                $stderr.printf("curkey is nil, but keybuf is also empty ... that shouldn't be possible!\n")
                exit(1)
              else
                curkey = Key.new(keybuf.join)
                keybuf = []
                hadkey = true
              end
            else
              curkey.values.push(valbuf.join)
              valbuf = []
            end
          end
          state = nil
        elsif state == :text then
          if curkey == nil then
            keybuf.push(curch)
          else
            valbuf.push(curch)
          end
          state = nil
        elsif state == :commentline then
          combuf = []
          while true do
            if (nch = data[ic]) == "\n" then
              break
            else
              combuf.push(nch)
            end
            ic += 1
          end
          if curkey != nil then
            curkey.comments.push(combuf.join)
          end
          state = nil
        end
      end
      ic += 1
    end
  end
  pp databuf
end

