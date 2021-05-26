for i in '.dev' '.trn' '-gold.tst';
do

python3 canonicalize.py ../data/eng/eng"$i" > ../data/eng/eng"$i".pos
cat ../data/eng/eng"$i".pos | awk -F"\t" 'BEGIN {OFS="\t"};{gsub(/\r/,"",$3); print $1,$3,$2}' > ../data/eng/eng"$i".r
rm ../data/eng/eng"$i".pos
done
