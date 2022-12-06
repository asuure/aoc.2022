ar=[]
arar=[]
File.open("5.txt").take(9).each do |l|
    l.scan(/.{4}|.+/).each do |e|
        ar.push(e.delete("[] \n"))
    end
    arar.push(ar)
    ar=[]
end
a=arar.reverse.transpose.map(&:join)

def t(ar,n,from,to)
    ta=ar[from-1].slice(-n,n).reverse
    ar[from-1].slice!(-n,n)
    ar[to-1].concat(ta)
end

File.open("5.txt").drop(10).each do |l|
    j=l.split(/[\s]/).map(&:to_i)
    t(a,j[1],j[3],j[5])
end
print a.map{|h|h[-1]}.join