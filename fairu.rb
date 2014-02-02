#!/usr/bin/env ruby
# encoding: utf-8

require "gibberish"
require 'optparse'

options = {}
banner = nil

# set the default option is none are given
#
OptionParser.new do |opts|
  opts.banner = "Usage: #{__FILE__} [options]"

  opts.on("-e" , "--encrypt-file", "Encrypt file") do |t|
    options[:encrypt] = t
  end

  opts.on("-d" , "--decrypt-file", "Decrypt file") do |d|
    options[:decrypt] = d
  end


  opts.on("-s " , "--source-file ", "Source file") do |s|
    options[:source_file] = s
  end

  opts.on("-n " , "--new-file ", "New file") do |d|
    options[:destination_file] = d
  end

  opts.on("-p " , "--passphrase ", "Passhrase for file") do |pw|
    options[:passphrase] = pw
  end


  opts.on_tail("-h", "--help", "Show this message") do
    puts opts
    exit
  end
  #set current options
  banner = opts

end.parse!

if options.empty?
  puts banner
  exit
end

raise OptionParser::MissingArgument, "You need to supply passphrase" if options[:passphrase].nil?

cipher = Gibberish::AES.new(options[:passphrase])

if options[:encrypt]
  cipher.encrypt_file(options[:source_file], options[:destination_file])
else
  cipher.decrypt_file(options[:source_file], options[:destination_file])
end

if File.exists? options[:destination_file]
  puts "finished with #{options[:destination_file]}!!"
else 
  puts "Houston we have a problem.  #{options[:destination_file]} does not exist"
end
