(: commandSetIterator (-> (List Tree) (List Tree) (List Tree)))
(= (commandSetIterator Nil $localCommandSet)
             $localCommandSet)

(= (commandSetIterator (Cons $y $ys)
            $localCommandSet)
   (if (and (and (== (getChildren $y) Nil) (== (guardSetChecker (Cons $y $ys)) 1))
            (== (getNodeType $x) AND)
       )
       (setUnion treeIsMember (getGuardSet $y) (commandSetIterator $ys $localCommandSet))
       (commandSetIterator $ys $localCommandSet)
   )
)
 
 