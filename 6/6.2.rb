res=0
n=14
f=File.read("6.txt")
f.each_char do 
    print(res+n)||return if f[0,n]!~/([a-z]).*\1/ 
    res+=1 
    f.slice!(0)
end