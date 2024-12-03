(: updateGuardSetTree (-> Tree Tree Tree))
(= (updateGuardSetTree $target $node2)
   (let* 
     (
      ($A (getGuardSet $target))   
      ($B (getGuardSet $node2))   
     )
     (replaceGuardSet $target (setInsert treeIsMember  $A $node2))  
   )
)
