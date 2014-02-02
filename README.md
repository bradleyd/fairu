# encrypt and descrypt files

To keep my files safer on DropBox, etc..


## encrypt 
```bash
./fairu.rb -e -s ~/Downloads/TaxForms.pdf -d ~/Dropbox/fst_2013_tax_pdf.enc -p foobar
```


## decrypt 

```bash
 ./fairu.rb -d -s ~/Dropbox/fst_2013_tax_pdf.enc -n /home/bradleyd/foobar.pdf -p foobar
```

#### fairu means file in japanese
