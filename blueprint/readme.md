#data website

http://epigenomesportal.ca/ihec/grid.html?build=2017-10&assembly=1&assayCategories=1

#download 

wget -i url.txt


In the blueprint public dataset, they have 3 endothelial cell of umbilical veins samples as the following. they can be removed before the further analysis.

`24893.Blueprint.ERS433785.WGB-Seq.signal.bigWig`

`24895.Blueprint.ERS433789.WGB-Seq.signal.bigWig`

`24903.Blueprint.ERS433793.WGB-Seq.signal.bigWig`


wget -e robots=off -nH -r -nd --reject="index.html*" -l 6 -A "*CPG_methylation_calls.bs_call.GRCh38.20160531.bw" --no-parent http://ftp.ebi.ac.uk/pub/databases/blueprint/data/homo_sapiens/GRCh38/

