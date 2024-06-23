import csv

# Caminho do arquivo CSV de entrada e saída
input_csv = 'C:\TP2\Desc_Pessoas.csv'
output_csv = 'C:\TP2\Desc_Pessoas2.csv'

# Depois voltei para o nome original para a importação no SGBD

# Ler e reescrever o arquivo CSV com os campos entre aspas duplas
with open(input_csv, 'r', encoding='utf-8') as infile, open(output_csv, 'w', newline='', encoding='utf-8') as outfile:
    leitura = csv.reader(infile)
    escrita = csv.writer(outfile, quoting=csv.QUOTE_ALL)

    for row in leitura:
        escrita.writerow(row)