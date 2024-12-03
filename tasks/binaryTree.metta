 ;;This function checks if the TreeNode has exactly 2 children
(= (checkBinaryTree (TreeNode $value $guardSet $children)) 
(== 2 (length $children))) 
 
 ;;helper function
 (:length (-> (List) Int)) 
 (= (length Nil) 0) 
 (= (length (Cons $x $xs)) 
 (+ 1 (length $xs))) 
