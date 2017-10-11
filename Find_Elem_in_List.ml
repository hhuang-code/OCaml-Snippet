let rec member x list =
    if list = [] then false
    else if x = hd list then true
    else member x (tl list);;

let () = 
    if (member 1 [1; 2; 3; 4]) = true then printf "yes"
    else printf "no";;
