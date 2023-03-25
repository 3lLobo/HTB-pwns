import re

class Matrix():
    def __init__(self, a, b, c, d, e, f, g, dp, line):
        self.a = a
        self.b = b
        self.c = c
        self.d = d
        self.e = e
        self.f = f
        self.g = g
        self.dp = dp
        self.line = line

    def hor(self, val):
        return " ---- " if val == 1 else "      "

    def vert(self, val):
        return "|" if val == 1 else " "

    def dump(self):
        print(f"a:{self.a}, b:{self.b}, c:{self.c}, d:{self.d}, e:{self.e}, f:{self.f}, g:{self.g} (dp:{self.dp}, line:{self.line})")

    def render(self):
        spacer = (" " * len(self.hor(self.a)))
        print(self.hor(self.a))
        print(self.vert(self.f) + spacer + self.vert(self.b))
        print(self.vert(self.f) + spacer + self.vert(self.b))
        print(self.hor(self.g))
        print(self.vert(self.e) + spacer + self.vert(self.c))
        print(self.vert(self.e) + spacer + self.vert(self.c))
        print(self.hor(self.d))


class DictEntry():
    def parse(line):
        entries = line.rstrip().split(',')
        return DictEntry(entries[0], int(entries[1]), int(entries[2]), int(entries[3]), int(entries[4]), int(entries[5]), int(entries[6]), int(entries[7]))

    def __init__(self, char, a, b, c, d, e, f, g):
        self.char = char
        self.a = a
        self.b = b
        self.c = c
        self.d = d
        self.e = e
        self.f = f
        self.g = g

    def matches(self, matrix):
        return self.a == matrix.a and self.b == matrix.b and self.c == matrix.c and self.d == matrix.d and self.e == matrix.e and self.f == matrix.f and self.g == matrix.g


class SegmentDict():
    def __init__(self, entries):
        self.entries = entries

    def matches(self, matrix):
        return [e.char for e in self.entries if e.matches(matrix)]

    def is_valid(self, matrix):
        return len(self.matches(matrix)) > 0


def parse_dict():
    with open("segments_dict.csv") as f:
        lines = f.readlines()[1:]
        entries = [DictEntry.parse(l) for l in lines]
        return SegmentDict(entries)


def map(channels, line):
    fields = [int(v) for v in line.rstrip().split(',')[1:]]
    if not fields[1] == 1:
        return None
    dp = fields[channels[7]]
    return Matrix(fields[channels[0]], fields[channels[1]], fields[channels[2]], fields[channels[3]], fields[channels[4]], fields[channels[5]], fields[channels[6]], dp, line)


def parse_csv(filename):
    with open(filename, 'r') as f:
        lines = f.readlines()[1:]
        entries = [Matrix.parse(l) for l in lines]
        entries = [e for e in entries if e is not None]
        return entries


if __name__ == "__main__":
    segmentDict = parse_dict()

    re_hex = r"^[a-fA-F\d\s\-\_\"\']+$"

    with open("digital.csv", 'r') as f:
        lines = f.readlines()[1:]

    options = []
    cnt = 0
    chan = [2,5,4,0,6,7,3,1]
    chan_str = [str(c) for c in chan]
    entries =  [map(chan, line.strip()) for line in lines]
    entries = [ e for e in entries if e is not None ]

    str = ""
    for e in entries:
        str += segmentDict.matches(e)[0]
    print(f"Using display signal channels [{','.join(chan_str[:-1])}] and dp {chan_str[-1]}")
    print(str)
    print(bytes.fromhex(str).decode("utf-8"))

