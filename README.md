# encrypt and descrypt files

To keep my files safer on DropBox, etc..

```ruby
Usage: ./fairu.rb [options]
    -e, --encrypt-file               Encrypt file
    -d, --decrypt-file               Decrypt file
    -s, --source-file                Source file
    -n, --new-file                   New file
    -p, --passphrase                 Passhrase for file
    -h, --help                       Show this message
```

## encrypt 
```bash
./fairu.rb -e -s ~/Downloads/TaxForms.pdf -n ~/Dropbox/fst_2013_tax_pdf.enc -p foobar
```


## decrypt 

```bash
 ./fairu.rb -d -s ~/Dropbox/fst_2013_tax_pdf.enc -n /home/bradleyd/foobar.pdf -p foobar
```

#### fairu means file in japanese
