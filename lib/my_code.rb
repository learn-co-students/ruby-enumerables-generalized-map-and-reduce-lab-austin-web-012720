# Your Code Here
def map(a)
  n = []
    for i in 0...a.length 
       n << yield(a[i])
    end
  return n 
end

def reduce(a, sp=nil)
    if sp
      t = sp
      start = 0
    else
      t = a[0]
      start = 1
    end
    for i in start...a.length 
        t = yield(t, a[i])
    end
    return t
end