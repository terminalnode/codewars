#!/usr/bin/env python3
# https://www.codewars.com/kata/ten-pin-bowling/python
#
# Input is a string representing a player's 10 frames in a game of bowling.
# It may look something like this: 'X X 9/ 80 X X 90 8/ 7/ 44'
# X represents a strike, worth 10 points + whatever the next two rolls (not frames) are worth.
# / represents a spare, worth 10 points + whatever the next roll is.
# Frames such as 81 mean the first roll was worth 8 and the second one was worth 1, brining the total up to 9 points for that frame.
# The 10th frame consists of 1-3 strikes and strike bonuses do not apply, so it can be worth a maximum of 30 points.

def simple_score(rolls):
    """Determines the score of one or more rolls not counting strike/spare bonuses."""
    score = 0
    last_score = 0
    for roll in rolls:
        if roll == 'X':
            score += 10
        elif roll == '/':
            score += 10 - last_score
        else:
            last_score = int(roll)
            score += last_score
    return score

def bowling_score(frames):
    """Determines the score of a series of frames. A full game of bowling, that is."""
    score = 0
    frames = frames.split(' ')
    for frame in range(len(frames)):
        current = frames[frame]

        # If on final frame bonuses do not apply
        if frame == len(frames) - 1:
            score += simple_score(current)
            break

        # Not on final frame
        if current.isdigit():
            # Normal scoring, no strikes or spares.
            score += simple_score(current)

        else:
            # Spares are always two rolls and strikes are always one,
            # so merging the three next rolls starting with the beginning
            # of this frame works in both scenarios.
            current = ''.join(frames[frame:frame+3])[:3]
            score += simple_score(current)

    return score

if __name__ == '__main__':
    print(bowling_score("X X X X X X X X X XXX"))
    print(bowling_score("X X 9/ 80 X X 90 8/ 7/ 44"))
