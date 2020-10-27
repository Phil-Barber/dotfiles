tmux new-session -s bart -c ~/repos/lantum/bart -d
tmux new-session -s react -c ~/repos/lantum/react-web-app -d
tmux new-session -s native -c ~/repos/lantum/lantum-native -d
tmux new-session -s todo -c ~/ -d
tmux send -t todo.0 'vim todo/todo.txt' ENTER
tmux new-session -s stack -c ~/repos/lantum/stack -d
tmux new-session -s phil -c ~/repos/phil-barber -d
