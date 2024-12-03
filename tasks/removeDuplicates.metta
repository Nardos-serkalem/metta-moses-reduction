(= (removeDuplicates Nil) Nil) 
(= (removeDuplicates (Cons $x $xs)) 
  (if (isMember $x $xs) 
    (removeDuplicates $xs) 
    (Cons $x (removeDuplicates $xs)))) 
 (= (isMember $x $list) 
    (case $list 
        ( 
            ( (Cons $n $s) (if (== $x $n) True (isMember $x $s))) 
            ( Nil False) ))
) 
