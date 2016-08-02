lines = file('12.txt').read()
#import re
#ss = re.findall(r'(-?\d+)',lines)
#print sum(map(int, ss))
print lines
import json
s = json.loads(lines)
print s
