#thiss is a fractions program that will add subtract multiply and reduce
#it might also convert fraction into decimal

require 'rational'

#methods definition section
#***************************************************************

#all methods should all reduce before  awnser
def add_frac(a,b)
lcm = a[1].lcm(b[1])
puts a.inspect
puts b.inspect
puts lcm
if lcm == a[1] and b[1] then
        sum2 = a[0] + b[0]
        puts "Your fraction is #{sum2}/#{lcm}"
else
        sum1 = (a[0]*b[1]) + (b[0]*a[1])
        puts sum1
puts "Your fraction is #{sum1}/#{lcm}"
end
end


def mult_frac(a,b)
        num= a[0]*b[0]
        denom=a[1]*b[1]
        reduce_frac(a,b)
        puts "Your fraction is  #{num}/#{denom}"

end


def sub_frac(a,b)
        
b[0] = b[0]*-1
add_frac(a,b)
end
                                                                    
def div_frac(a,b)
 
invert_frac(a,b)
numerator_Sum = $numerator1*$numerator2
denominator_Sum = $den1 * $den2
puts "Your fraction is #{numerator_Sum}/#{denominator_sum}"

end

def reduce_frac(a,b)
redux = a[0].gcd(a[1])
numerator = a[0] / redux
denom = a[1] / redux
redux1 = b[0].gcd(b[1])
numerator1 = b[0] / redux1
denom1 = b[1] / redux1
puts "Your fractions are #{numerator}/#{denom} and #{numerator1}/#{denom1}"

end

def to_decimal(a,b)
a.collect! {|x| x.to_f}
b.collect! {|x| x.to_f}

a = a[0] / a[1]
b = b[0] / b[1]

puts "Your first fraction as a decimal is #{a.inspect}"
puts "Your second fraction as a decimal is #{b}"
end

def invert_frac(a,b)
$numerator1 = a[1]
$numerator2 = b[1]
$den1 = a[0]
$den2 = b[0]
puts "The inverted fractions are #{$numerator1}/#{$den1} and #{$numerator2}/#{$den2}"
end

def invert_frac(a,b)
$numerator1 = a[1]
$numerator2 = b[1]
$den1 = a[0]
$den2 = b[0]
puts "The inverted fractions are #{$numerator1}/#{$den1} and #{$numerator2}/#{$den2}"
end

puts "Welcome to my fraction calculator. Please enter the two fractions like this,one whole fraction at a time pressing enter inbetween the fraction. Example: a/b, enter, c/d then enter."

frac1 = gets.chomp
frac2 = gets.chomp

frac1 = frac1.split("/")
frac2 = frac2.split("/")

frac1.collect! {|x| x.to_i}
frac2.collect! {|x| x.to_i}

puts "Would you like to add (1), subtract (2), multiply (3), divide(4), reduce(5) invert (6), or turn to decimal(7) your fractions"

choice = gets.to_i

case choice
        when 1
                add_frac(frac1,frac2)
        when 2
                sub_frac(frac1,frac2)
        when 3
                mult_frac(frac1,frac2)
        when 4
                div_frac(frac1,frac2)
        when 5
                reduce_frac(frac1,frac2)
        when 6
                invert_frac(frac1,frac2)
        when 7
                to_decimal(frac1, frac2)
end

