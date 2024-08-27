# AD2AT 

AD2AT: Audio Description to Alternative Text, a Dataset of Alternative Text from Movies

## AD2AT-VIW: Visual Into Words

Fine-grained annotation from the Visuals Into Words corpus, What Happens While film.
All data is available on this repository.

Access to the original VIW data: 
- https://webs.uab.cat/viw/corpus/
- https://transmediacatalonia.uab.cat/viw-data/public/

## AD2AT-MD: Movie Description

V1. Fine-grained annotation from 10 films from MPII Movie Description dataset.

To download AD2AT-MD images, you need to request access to MPII-MD dataset:
https://www.mpi-inf.mpg.de/departments/computer-vision-and-machine-learning/research/vision-and-language/mpii-movie-description-dataset/access-to-mpii-movie-description-dataset/

You will get a username and password, then access to annotations, JPG and AVI lists. To download only the images that are annotated in AD2AT :
- Navigate to the `download` repository.
- Sign in to the MPII Movie Description access webpage and download the full list of video frames filenames (`downloadLinksJpg.txt`).
- Run : `filterDownloadLinksJpg.sh`
- Run : `wgetParallelProtected.sh downloadLinksJpgAd2at.txt <username> <password>`

The repository structure should be as follows:

```
.
|-- annotations-AD2AT-MD.csv
|-- annotations-AD2AT-VIW.csv
|-- download
|   |-- ad2atFrames.txt
|   |-- downloadLinksJpg.txt
|   |-- downloadLinksJpgAd2at.txt
|   |-- filterDownloadLinksJpg.sh
|   `-- wgetParallelProtected.sh
|-- jpgVIW
|   |-- 243.jpg
|   |-- [...]
|   `-- 19505.jpg
`-- jpgMD
    |-- 1004_Juno : 1 folder = 1 movie
    |   |-- 1001_Flight_00.00.32.106-00.00.41.879 : 1 folder = 1 scene
    |   |   `-- 0001.jpg : 1 jpg = 1 frame
    |   `-- [...]
    |-- [...]
    `-- 1059_The_devil_wears_prada
```

## References

If you use the AD2AT data, please cite:

```
@inproceedings{lincker_ad2at_2025,
 title={AD2AT: Audio Description to Alternative Text, a Dataset of Alternative Text from Movies},
 author={Lincker, Elise and Guinaudeau, Camille and Satoh, Shin'ichi},
 booktitle={Proceedings of the 31st International Conference on Multimedia Modeling(MMM)},
 year={2025}}
```

1. Lincker, E., Guinaudea, C., Satoh S.: AD2AT: Audio Description to Alternative Text, a Dataset of Alternative Text from Movies. In: Proceedings of the 31st International Conference on Multimedia Modeling (2025)
2. Matamala, A., Villegas, M.: Building an audio description multilingual multimodal corpus: the VIW project. Multimodal Corpora: Computer vision and language processing (2016)
3. Matamala, A.: The VIW project: Multimodal corpus linguistics for audio description analysis. Revista Española de Lingüística Aplicada/Spanish Journal of Applied Linguistics (2019)
4. Rohrbach, A., Rohrbach, M., Tandon, N., Schiele, B.: A dataset for movie description. In: Proceedings of the IEEE Conference on Computer Vision and Pattern Recognition (2015)