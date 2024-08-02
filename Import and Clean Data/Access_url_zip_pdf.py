#!/usr/bin/env python
# coding: utf-8


# Principaux modules utilisés dans ce projet

# Pour le dataframe
import pandas as pd

# Pour la lcture du ficgier pdf
from PyPDF2 import PdfFileReader

# pour le dossier zip
from io import BytesIO    
from urllib.request import urlopen
from zipfile import ZipFile

zipurl = 'https://www150.statcan.gc.ca/n1/fr/pub/13-25-0001/2022001/CSV.zip?st=bfHj6nim'


# Ce nouveau dossier sera creer et contiendra le dossier telechargé
with urlopen(zipurl) as zipresp:
    with ZipFile(BytesIO(zipresp.read())) as zfile:
        zfile.extractall('Data')          

# Creation de variable contenant chemin d'acces + nom des fichiers
path1 = './Data/CSV/Data_Donnees/CTNS2021ectn_p_bsw.csv'
path2 = './Data/CSV/Data_Donnees/CTNS2021ectn_p.csv'
path3 = './Data/CSV/Documentation/Codebook_Livre des codes/ECTN2021_FMGD_LvCds.pdf'

df1 = pd.read_csv(path1)
df1

df2 = pd.read_csv(path2)
df2

# Importation des donnees du fichier pdf
document = PdfFileReader(open(path3, 'rb'))

# Creation d'une fonction qui retroune une liste comprenant toutes les lignes de la page "page_start"  a la page 
#  "page_end" d'un objet reader "doc" qui est le resultat d'une lecture de document pdf  .
def page_list(doc, page_start, page_end):
    pdftext = ""
    for page in range(page_start,page_end):
        pageObj = document.getPage(page) 
        pdftext += pageObj.extractText() 
        list_lines = pdftext.split('\n')
    return list_lines


# Avec la fonction precedente creation d'une liste de lignes de la page 2 a la page 4
lines = page_list(document,2,4)

# Selection des lignes qui permettent d'avoir les descriptions des variables. Ces informations se trouvent entre l'element 
# de la liste se terminant par "données" et l'element de la liste commencant par "Index". A la fin on aura 4 listes.
list_var = []
list_pos = []
list_desc = []
list_pag = []
for i in range(2,len(lines)):
    if not (lines[i].endswith("données") or lines[i].startswith("Index")):
        line = lines[i].replace(".","").split()
        list_var.append(line[0])
        list_pos.append(line[1])
        list_desc.append(' '.join(line[2:-1]))
        list_pag.append(line[-1])
    else:
        continue

# Creation a partir des 4 listes precedentes d'un dataframe df3. Les listes seront mises dans un dictionnaire dont 
# les clés sont les 1er elements des listes et les valeurs le reste des elements.
df3 = pd.DataFrame({str(list_var[0]):list_var[1:], str(list_pos[0]):list_pos[1:], str(list_desc[0]):list_desc[1:], str(list_pag[0]):list_pag[1:]})

# permet d'agrandir les colonnes pour mieux voir le contenu des colonnes
pd.set_option('max_colwidth', None) 
df3.head(55)




