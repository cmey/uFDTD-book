# Fragment 1.1
function main()
  a = 1.0 / 11.0        /*@ \label{oneEleventhA} @*/

  if (a + a + a + a + a + a + a + a + a + a + a == 1.0) /*@ \label{oneEleventhB} @*/
    println("Equal.")
  else
    println("Not equal.")
  end
end

function main()
  a = 1.0 / 11.0

  if (a + a + a + a + a + a + a + a + a + a + a == 1.0)
    println("Equal.")
  else
    println("Not equal.")
  end
end


# Fragment 1.2
using Printf
function main()
  a = 1.0
  b = 0.5
  c = a + b

  while c != a  /*@ \label{fragCompareA} @*/
    b = b / 2.0
    c = a + b
  end

  @printf("%12g %12g %12g\n", a, b, c) /*@ \label{fragCompareB} @*/
end

using Printf
function main()
  a = 1.0
  b = 0.5
  c = a + b

  while c != a
    b = b / 2.0
    c = a + b
  end

  @printf("%12g %12g %12g\n", a, b, c)
end


# Fragment 1.3
const COUNT = 23

function main()
  a = 2.0f0
  for i = 1:COUNT
    a = sqrt(a)  # square root of a
  end

  for i = 1:COUNT
    a = a * a     # a squared
  end

  @printf("%12g\n", a)
end
