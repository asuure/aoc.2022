res=0
n=14
f=File.read("6.txt")
f.each_char do 
    res+=1 
    print(res+n-1)||return if f[0,n]!~/([a-z]).*\1/ 
    f.slice!(0)
end