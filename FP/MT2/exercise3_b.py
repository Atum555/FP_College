from functools import reduce as red
def summary(enrolls:dict) -> tuple: return (list(dict.fromkeys(red(lambda x,y: x+y, list(enrolls.values()), [])).keys()), sum(map(lambda x: len(x[1]), enrolls.items())))