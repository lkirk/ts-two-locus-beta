# installation

This script will install the tskit branch into a local virtual environment
```
./local-install.sh
```

To use:
```
source ve/bin/activate
python
>>> import tskit
>>> tskit.load('path/to/your/tree/sequence')
>>> ts.ld_matrix()
```

To specify row / column sites (this compares the sites 0, 1 against 2, 3 -- rows are 0, 1 and columns are 2, 3):
```
>>> ts.ld_matrix(sites=[[0, 1], [2, 3]])
```

To get sites within a genomic range (half open interval):
```
start_pos = 2
end_pos = 4
sites = [start_pos <= s.position < end_pos for s in ts.sites()]
```

To test the docker script:
```
source ve/bin/activate
python ./docker/analysis.py --input /path/to/your/tree/sequence
```
