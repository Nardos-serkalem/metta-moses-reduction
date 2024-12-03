;;tescases of the functions

;;binaryMap func
!(binaryMap add 10 (:: 1 (:: 2 (:: 3 ()))))
!(binaryMap multiply 8 (:: 1(:: 2 (:: 4 ()))))
!(binaryMap concat 4 (:: 1(:: 2 (:: 4 ()))))
!(binaryMap concat "bad" (:: "day" (:: "thing" ())))

;;checkBinaryTree func
!(checkBinaryTree (TreeNode (Value Nil False OR) Nil   
  (Cons (TreeNode (Value B True ) Nil Nil) (Cons (TreeNode (Value C False ) Nil Nil) Nil))))
!(checkBinaryTree (TreeNode (Value Nil False OR) Nil (Cons (TreeNode (Value Nil True OR) Nil 
 (Cons (TreeNode (Value a False ) Nil Nil) (Cons (TreeNode (Value Nil True AND) Nil
 (Cons (TreeNode (Value b False ) Nil Nil) (Cons (TreeNode (Value c False ) Nil Nil) Nil))) Nil))) Nil)))

 ;;commandSetIterator func
 !(commandSetIterator 
   (Cons (TreeNode (Value Nil False AND) (Cons (TreeNode (Value A False LITERAL) Nil Nil) Nil)  Nil)
   (Cons (TreeNode (Value Nil False OR) (Cons (TreeNode (Value B False LITERAL) Nil Nil)
   (Cons (TreeNode (Value C False LITERAL) Nil Nil) Nil)) Nil) Nil)) Nil)
 !(commandSetIterator 
   (Cons (TreeNode (Value Nil False OR) (Cons (TreeNode (Value X False LITERAL) Nil Nil)
         (Cons (TreeNode (Value Y False LITERAL) Nil Nil) Nil)) Nil)
         (Cons (TreeNode (Value Nil False AND) (Cons (TreeNode (Value Z False LITERAL) Nil Nil) Nil) Nil)
         (Cons (TreeNode (Value Nil False OR) (Cons (TreeNode (Value W False LITERAL) Nil Nil) Nil) Nil) Nil)))
   Nil)

 ;;isMember func
! (isMember 3 (:: 4 (:: 3 (:: 2 Nil))))
! (isMember 10 (:: 6 (:: 9 (:: 12 Nil))))

;;removeDuplicates
!(removeDuplicates (Cons A (Cons B (Cons B Nil))))
!(removeDuplicates (Cons 1 (Cons 1 (Cons 1 Nil))))

;;updateGuardSet func
!(updateGuardSetTree  
   (TreeNode (Value Nil False AND) Nil (Cons (TreeNode (Value X True LITERAL) Nil Nil) (Cons (TreeNode (Value Y True LITERAL) Nil Nil) Nil)))  
   (TreeNode (Value Z True LITERAL) Nil Nil) 
)