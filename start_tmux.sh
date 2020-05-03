tmux new-session -s bart -c ~/repos/bart -d
tmux new-session -s react -c ~/repos/react-web-app -d
tmux new-session -s native -c ~/repos/lantum-native -d
tmux new-session -s todo -c ~/ -d
tmux send -t todo.0 vim .todo.txt ENTER
tmux new-session -s stack -c ~/repos/stack -d
