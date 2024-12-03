(: isMember (-> $a List Bool))
(= (isMember $a Nil) False)
(= (isMember $a (:: $x $xs))

;;Checks if a given element $a is a member of a list
    (if (== $a $x)
        True
        (isMember $a $xs)
          )
     )
   