let rec member x list =
    if list = [] then false
    else if x = hd list then true
    else member x (tl list);;

let () = 
    if (member 1 [1; 2; 3; 4]) = true then printf "yes"
    else printf "no";;
    
(*---or---*)

let rec member key list =
    match list with
    |[] -> false
    |v :: rest when v = key -> true
    |head :: rest -> member key rest;;
    
let squares = [1; 2; 3; 4; 5; 6];;

let () = 
    if (member 9 squares) then printf("true")
    else printf("false");;
