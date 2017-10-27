[

This brainf*ck program performs depth first traversal of a binary tree.
Preorder?  Postorder?  Inorder?

Each node is represented as:
| 0 or PadLeftZ | 1 PadLeftO | distLeft | directionLeft | notVisitedLeft | scratchPad1 | scratchPad2 | value | directionParent | distParent | notVisitedRight | directionRight | distRight | 1 PadRightO | 0 PadRightZ |

The value is the value of the node.
The padding on either side helps in moving from node to node.
If changed, it must be returned to reflect the values above.
directionX is 1 is the X is to the right, and 0 if the X is to the right.
distanceX represents the distance from value of the current node to the value of the X node.
notVisitedX is 1 if X has not yet been visited, and is otherwise 0
Scratchpads are for scratchwork, and need not be returned to their original condition.  Keep this in mind.

Since this structure is changing often, constant moves that might change in other versions are denoted by FirstVarTOSecondVar_>>>(...)>>>_FirstVarTOSecondVar
Where the amount of moves is the distance between FirstVar and SecondVar.  This aims to make changes as seamless as possible.

Shorter variable names as follows:
| plz           |      plo   |  dsl     | drl           | vl             | sp1         | sp2         | v     | drp             | dsp        |    vr           |     drr        |   dsr     |     pro     |    prz      |
| 0 or PadLeftZ | 1 PadLeftO | distLeft | directionLeft | notVisitedLeft | scratchPad1 | scratchPad2 | value | directionParent | distParent | notVisitedRight | directionRight | distRight | 1 PadRightO | 0 PadRightZ |

======================================

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

==============

Assume we are on the parent value
]

vTOdsl_<<<<_vTOdsl
[                          if left exists
  dslTOvl_>>_dslTOvl
  [                          if left has not yet been visited
    vlTOdrl_<_vlTOdrl
    [                          if left node is to the right
      drlTOsp1_>>_drlTOsp1       clear both scratchpads
      [-]
      sp1TOsp2_>_sp1TOsp2
      [-]
      sp2TOdsl_<<<<_sp2TOdsl
      [                         copy the values into two scratchpads
        -
        dslTOsp1_>>>_dslTOsp1
        +
        sp1TOsp2_>_sp1TOsp2
        +
        sp2TOdsl_<<<<_sp2TOdsl
      ]
      dslTOsp1_>>>_dslTOsp1     move to scratchpad1, and copy it back to dsl
      [
        -
        sp1TOdsl_<<<_sp1TOdsl
        +
        dslTOsp1_>>>_dslTOsp1
      ]                        now dsl has correct value, and scratchpad has a copy of it.
    ]
  ]
]



