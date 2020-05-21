import pyspark

sc = pyspark.SparkContext('local[*]')

txt = sc.textFile('file:////usr//share//X11//Xcms.txt')

print(txt.count())

python_lines = txt.filter(lambda line: 'the' in line.lower())
print(python_lines.count())
