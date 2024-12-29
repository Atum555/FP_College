import datetime

str_input = input()
dates = list(map(lambda x: datetime.datetime.strptime(x, "%Y-%m-%d"), str_input.split(',')))
dates.sort(key= lambda x: x.strftime('%m%d%Y'))
for date in dates:print(date.strftime('%Y-%m-%d'))
