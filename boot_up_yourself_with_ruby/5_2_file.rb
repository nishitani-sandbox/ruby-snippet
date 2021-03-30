File.open("5_2_test") do |f|
  f.each_line do |line|
    print "#{f.lineno}: #{line}"
  end
end
