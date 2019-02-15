#Input: floating point number that represents an angle between 0 and 360 degrees
#Output: string representing an angle in degrees, minutes, and seconds
#Rules: use degrees symbol, ' for minutes, " for seconds
#Use two digit numbers with leading zeros when formatting
#Answers may vary by 1-2 seconds depending on how you round

DEGREE = "\xC2\xB0"

def dms(n)
degrees = n.to_i
minutes = (n - degrees) * 60
seconds = ((minutes - minutes.to_i) * 60).to_i
minutes = minutes.to_i
format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")