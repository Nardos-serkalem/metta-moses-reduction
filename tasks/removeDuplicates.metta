(= (removeDuplicates Nil) Nil) 
(= (removeDuplicates (Cons $x $xs)) 
  (if (isMember $x $xs) 
    (removeDuplicates $xs) 
    (Cons $x (removeDuplicates $xs)))) 
 (= (isMember $x $list) 
    (case $list 
        ( 
            ( (Cons $h $t) (if (== $x $h) True (isMember $x $t))) 
            ( Nil False) ))
) 
