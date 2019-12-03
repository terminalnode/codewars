# https://www.codewars.com/kata/baby-shark-lyrics-generator/
# Write out the lyrics to a childrens' song. Code must be
# under 300 characters long.
def baby_shark_lyrics():
    parts = ["Baby shark", "Mommy shark", "Daddy shark", "Grandma shark", "Grandpa shark", "Let's go hunt"]
    output = [ f"{part}, {'doo ' * 5}doo\n" * 3 + f"{part}!\n" for part in parts ]
    return "".join(output) + "Run away,…"
