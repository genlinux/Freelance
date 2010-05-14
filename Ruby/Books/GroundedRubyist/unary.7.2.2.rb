#Customizing unary operators
#Unary operators + and - occur most frequently as sign numbers as in -1

class Banner < String
def +@
upcase
end
def -@
downcase
end
def !
reverse
end
end
