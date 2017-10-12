let rec gcd a b = 
    if a = b then a
    else if a > b then gcd (a - b) b
    else gcd a (b - a);;

let rec fib1 n = 
    match n with 
    | 0 -> 1
    | 1 -> 1
    | _ -> fib1 (n - 1) + fib1(n - 2);;
   
(* A better version in time complexity *)
let fib2 n =
    let rec helper f1 f2 i =
        if i = n then f2
        else helper f2 (f1 + f2) (i + 1) in
    helper 0 1 0;;
