[

This brainf*ck program performs depth first traversal of a binary tree.
Preorder?  Postorder?  Inorder?
Each node is represented as 7 cells.
The furthest left is the distance to the value of the left child, or 0 if there is no left child.
The next furthest left is 1 if the left child is to the right, and 0 if the left child is to the left.
The next furthest left is the value of the node.
The furthest right is the distance to the value of the right child, or 0 if there is no right child.
The next furthest right is 1 if the right child is to the right, and 0 if the right child is to the left.
The next furthest right is 1 if the right child is to the right, and 0 if the right child is to the left.
The next furthest right is the distance to the value of the parent, or 0 if there is no right child.

Or in other words, each node is represented as
| distLeft | directionLeft | value | directionParent | distParent | directionRight | distRight |

]


[
TODO
Initialize tree example
Move to root
Recurse
(
if left exists, do left
output root value
if right exists, do right
)
]

