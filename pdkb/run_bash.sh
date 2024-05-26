cd MEP_backup

mkdir -p examples/grid-doxastic/nonEpGoal/prob1
python3 -m pdkb.planner pdkb-planning/examples/planning/grid-doxastic/nonEpGoal/prob1.pdkbddl --keep-files
mv execution.details examples/grid-doxastic/nonEpGoal/prob1
mv pdkb-domain.pddl examples/grid-doxastic/nonEpGoal/prob1
mv pdkb-plan.out examples/grid-doxastic/nonEpGoal/prob1
mv pdkb-plan.txt examples/grid-doxastic/nonEpGoal/prob1
mv pdkb-problem.pddl examples/grid-doxastic/nonEpGoal/prob1

mkdir -p examples/grid-doxastic/nonEpGoal/prob2
python3 -m pdkb.planner pdkb-planning/examples/planning/grid-doxastic/nonEpGoal/prob2.pdkbddl --keep-files
mv execution.details examples/grid-doxastic/nonEpGoal/prob2
mv pdkb-domain.pddl examples/grid-doxastic/nonEpGoal/prob2
mv pdkb-plan.out examples/grid-doxastic/nonEpGoal/prob2
mv pdkb-plan.txt examples/grid-doxastic/nonEpGoal/prob2
mv pdkb-problem.pddl examples/grid-doxastic/nonEpGoal/prob2

mkdir -p examples/grid-doxastic/nonEpGoal/prob3
python3 -m pdkb.planner pdkb-planning/examples/planning/grid-doxastic/nonEpGoal/prob3.pdkbddl --keep-files
mv execution.details examples/grid-doxastic/nonEpGoal/prob3
mv pdkb-domain.pddl examples/grid-doxastic/nonEpGoal/prob3
mv pdkb-plan.out examples/grid-doxastic/nonEpGoal/prob3
mv pdkb-plan.txt examples/grid-doxastic/nonEpGoal/prob3
mv pdkb-problem.pddl examples/grid-doxastic/nonEpGoal/prob3

mkdir -p examples/grid-doxastic/nonEpGoal/prob4
python3 -m pdkb.planner pdkb-planning/examples/planning/grid-doxastic/nonEpGoal/prob4.pdkbddl --keep-files
mv execution.details examples/grid-doxastic/nonEpGoal/prob4
mv pdkb-domain.pddl examples/grid-doxastic/nonEpGoal/prob4
mv pdkb-plan.out examples/grid-doxastic/nonEpGoal/prob4
mv pdkb-plan.txt examples/grid-doxastic/nonEpGoal/prob4
mv pdkb-problem.pddl examples/grid-doxastic/nonEpGoal/prob4



