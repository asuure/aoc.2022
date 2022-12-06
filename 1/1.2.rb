ar=[]
n=0
File.open("1.txt").each do |l|
    n+=l.to_i
    ar.push(n)&&n=0 if l=="\n"
end
print ar.sort.last(3).sum