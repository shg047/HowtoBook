
cd ~/bin/
wget http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/bigWigAverageOverBed  ./
wget http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/bigWigCat ./
wget http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/bigWigCluster ./
wget http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/bigWigCorrelate ./
wget http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/bigWigInfo ./
wget http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/bigWigMerge ./
wget http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/bigWigSummary ./
wget http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/bigWigToBedGraph ./
wget http://hgdownload.soe.ucsc.edu/admin/exe/linux.x86_64/bigWigToWig ./



# How to get histonoe modification regions
wget ftp://ftp.ncbi.nlm.nih.gov/geo/series/GSE56nnn/GSE56712/suppl/GSE56712_RAW.tar
tar xvf GSE56712_RAW.tar
rm GSE56712_RAW.tar
rm *bam
rm *bigWig
gunzip *.gz
for i in H3k27ac H3k27me3 H3k79me2 H3k9me3 H3k4me2 H3k4me3
do
cat *$i*broadPeak > promter.txt
awk '{if ($7>5) print $1,$2,$3}' OFS="\t" promter.txt > promter.bed
sort -k1,1 -k2,2n promter.bed > promterSort.bed
bedtools merge -i promterSort.bed > Human-hg19-$i-PMID24119843.bed
done
rm promter.txt
rm promter.bed
rm promterSort.bed

cp *PMID* ~/NAS3/db/hg19
scp shg047@genome-miner.ucsd.edu:/media/Home_Raid1/shg047/NAS3/Roadmap/Histone/*SEA* .

