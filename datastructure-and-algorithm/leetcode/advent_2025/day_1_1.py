with open('dataset.txt') as file:
    dial_position = 50
    password = 0
    
    for line in file:
        line = line.strip()
        direction = line[0]
        turns = int(line[1:])

        if direction == 'L':
            dial_position = (dial_position - turns) % 100
        elif direction == 'R':
            dial_position = (dial_position + turns) % 100

        if dial_position == 0:
            password += 1

    print(password)
        
