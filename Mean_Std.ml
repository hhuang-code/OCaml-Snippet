open Printf

(*
    return multiple values through tuple
*)

let stats l = 
    let rec helper rest n sum sum_squares = 
        match rest with
        | [] -> let nf = float_of_int n in
                (sum /. nf, sqrt(sum_squares /. nf))
        | h :: t -> helper t (n + 1) (sum +. h) (sum_squares +. (h *. h)) in
    helper l 0 0.0 0.0;;
    
let (mean, std) = stats [1.; 2.; 3.; 4.; 5.];;

let () = 
    print_float mean;
    print_newline ();
    print_float std;;
