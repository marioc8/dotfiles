import urllib.request
from bs4 import BeautifulSoup

def print_gold_table(table,startRow=0,endRow=0):
    tRows = table.find_all('tr')
    if endRow == 0: endRow = len(tRows)
    for tr in tRows[startRow:endRow]:
        f = tr.find_all('td')
        f1 = f[1].text.replace('.00','') 
        f2 = f[2].text.replace('.00','')
        print('   GLD {:>6}  {:>10}  {:>10}'.format(f[0].text,f1,f2))

def print_currency_table(table,tags):
    tRows = table.find_all('tr')
    for tr in tRows:
        f = tr.find_all('td')
        f1 = f[1].text
        if f1 in tags.keys():
            f0 = tags[f1]
            f2 = f[2].text
            f3 = f[3].text
            print('   {:>3}  {:5}     {:8}    {:6}'.format(f1,f0,f2,f3))

if __name__ == "__main__":
    fh = urllib.request.urlopen('https://kantor.com.pl/')
    content = fh.read()
    soup = BeautifulSoup(content,'html5lib')

    tAll = soup.find_all('table')
    tags = {'USD':'Dolar',
            'EUR':'Euro',
            'CHF':'Frank',
            'CNY':'Juan',
            'RUB':'Rubel'
            }
    print_currency_table(tAll[0],tags)
    print()
    print_gold_table(tAll[2],3,7)

