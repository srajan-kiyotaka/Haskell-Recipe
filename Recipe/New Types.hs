{- New Types -} 

-- BST
data BST a = EmptyBST | Node a (BST a) (BST a) deriving (Show, Read, Eq, Ord)

-- bSearch
bSearch :: Ord a => BST a -> a -> Bool
bSearch EmptyBST _ = False
bSearch (Node a l r) x | a == x    = True 
                       | a > x     = bSearch l x
                       | otherwise = bSearch r x

{- 
tree = Node 15 
(Node 10 (Node 6 EmptyBST (Node 8 EmptyBST EmptyBST)) 
(Node 12 EmptyBST EmptyBST)) 
(Node 20 EmptyBST (Node 50 EmptyBST EmptyBST)) 
-}

-- bInsert
bInsert :: Ord a => BST a -> a -> BST a
bInsert EmptyBST y = Node y EmptyBST EmptyBST
-- bInsert (Node x EmptyBST r) x = Node y
bInsert (Node x l r) y | y > x = Node x l $ bInsert r y
                       | y < x = Node x (bInsert l y) r
                       | otherwise = (Node x l r)