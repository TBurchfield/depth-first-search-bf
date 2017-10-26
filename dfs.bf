[

This brainf*ck program performs depth first traversal of a binary tree.
Preorder?  Postorder?  Inorder?
Each node is represented as 7 cells.
The furthest left is the distance from the value of the current node to the value of the left child, or 0 if there is no left child.
The next furthest left is 1 if the left child is to the right, and 0 if the left child is to the left.
The next furthest left is 1 if the left has been visited.
The next furthest left is a "scratch pad".  Operations can rely on it being zero, and must return it to zero.
The next furthest left is the value of the node.

The furthest right is the distance from the current node to the value of the right child, or 0 if there is no right child.
The next furthest right is 1 if the right child is to the right, and 0 if the right child is to the left.
The next furthest right is 1 if the right has been visited.
The next furthest right is the distance from the value of the current node to the value of the parent, or 0 if there is no parent.
The next furthest right is 1 if the parent is to the right, and 0 if the parent is to the left.

Or in other words, each node is represented as
| distLeft | directionLeft | visitedLeft | scratchPad | value | directionParent | distParent | visitedRight | directionRight | distRight |

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
In more detail:
(
if left exists and has not been visited, set visited bit, move pointer to left and start over.

if not (right visited) print current node
  if right exists, change visited bit move pointer to right and start over.

go to parent, if it exists.  Otherwise, exit.
)
]

