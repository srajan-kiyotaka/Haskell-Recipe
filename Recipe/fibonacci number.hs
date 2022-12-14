-- fibonacci number
fib = 0:1:(zipWith (+) fib $ tail fib)