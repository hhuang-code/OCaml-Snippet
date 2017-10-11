open List
open Printf

let rec append l1 l2 =
    if l1 = [] then l2
    else hd l1 :: append (tl l1) l2;;
    
(* A better version: *)
let rec append l1 l2 =
    match l1 with
    |[] -> l2
    |h::t -> h :: append t l2;;

let () = List.iter (printf "%d ") (append [1; 2] [3; 4]);;
