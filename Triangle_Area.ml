let triangle_area a b c = 
    let s = (a +. b +. c) /. 2.0 in
    sqrt (s *. (s -. a) *. (s -. b) *. (s -. c));;

let () = print_float (triangle_area 3. 4. 5.);;
