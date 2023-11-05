Status: Archive (code is provided as-is, no updates expected)

## Assessing the Quality of Gridded Population Data for Quantifying the Population Living in Deprived Communities

This repo contains the code to reproduce the results obtained on the paper "[Assessing the Quality of Gridded Population Data for Quantifying the Population Living in Deprived Communities](https://arxiv.org/abs/2011.12923)".

## Files

- Ground-truth folder contains the processed ground-truth data. The data are organized in two folders: "Population" and "Shapefile". The first folder has the population information for each polygon and the second has the shapefile with the shapes of the polygons. The original ground-truth data was obtained on [IBGE's website](https://www.ibge.gov.br/geociencias/organizacao-do-territorio/tipologias-do-territorio/15788-aglomerados-subnormais.html) on 03/Nov/2019.
- ```environment.yml``` can be used to create the Python environment used to process the gridded population data.
- ```paper_code.ipynb``` has the code used to process the gridded population data.
- Results folder has the output for both datasets: ```resultsLandScan2010_repo.csv``` and ```resultsWorldPOP2010_repo.csv```.

## Citation

```
@misc{demattos2020assessing,
      title={Assessing the Quality of Gridded Population Data for Quantifying the Population Living in Deprived Communities}, 
      author={Agatha C. H. de Mattos and Gavin McArdle and Michela Bertolotto},
      year={2020},
      eprint={2011.12923},
      archivePrefix={arXiv},
      primaryClass={cs.CY}
}
```
