res=0
File.open('4.txt').each do |l|
    l=l.split(/[-,\n\r]/).map(&:to_i)
    res+=1 if l[0]>=l[2]&&l[1]<=l[3]||l[0]<=l[2]&&l[1]>=l[3]
end
print res