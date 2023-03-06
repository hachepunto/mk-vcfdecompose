
results/%.decompose.vcf:	data/%.filter.vcf
	set -x
	mkdir -p results
	rtg vcfdecompose \
		--break-indels \
		--break-mnps \
		--no-gzip \
		-i $prereq \
		-o 'results/'$stem'.build.decompose.vcf' \
	&& mv 'results/'$stem'.build.decompose.vcf' $target 

