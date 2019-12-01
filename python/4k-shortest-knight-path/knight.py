def knight(p1, p2):
    start = parse_input(p1)
    goal = parse_input(p2)
    step_count = 0
    visited = {start}
    current = [start]
    moves = [ ( 2,-1), ( 2, 1),
              (-2, 1), (-2,-1),
              ( 1, 2), ( 1,-2),
              (-1, 2), (-1,-2) ]

    while (goal not in visited):
        step_count += 1
        new_current = list()
        for pos in current:
            possible_moves = [(pos[0] + i[0], pos[1] + i[1]) for i in moves]
            for new_pos in possible_moves:
                if new_pos not in visited:
                    if new_pos[0] < 1 or new_pos[1] < 1: continue
                    if new_pos[0] > 8 or new_pos[1] > 8: continue
                    visited.add(new_pos)
                    new_current.append(new_pos)
        current = new_current
    
    return step_count

def parse_input(input):
    x = input[0]
    y = int(input[1])
    if   (x == 'a'): x = 1
    elif (x == 'b'): x = 2
    elif (x == 'c'): x = 3
    elif (x == 'd'): x = 4
    elif (x == 'e'): x = 5
    elif (x == 'f'): x = 6
    elif (x == 'g'): x = 7
    elif (x == 'h'): x = 8
    return (x,y)
