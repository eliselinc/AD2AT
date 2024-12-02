# AD2AT 

AD2AT: Audio Description to Alternative Text, a Dataset of Alternative Text from Movies [1]

AD2AT comprises over 3,800 images paired with alt text, derived from audio-described movies. We take advantage of existing audio description datasets (Visuals Into Words and Movie Description) and provide a finer annotation to match one description to one image.

| | AD2AT-MD | AD2AT-VIW |
|:-|:-:|:-:|
| Pairs | 3,607 | 226 |

## AD2AT-VIW: Visuals Into Words

Fine-grained annotation of the audio-described film *What Happens While* (Visuals Into Words corpus [2,3]). 
AD2AT-VIW provides multiple alt text for 28 images, resulting in 226 text-image pairs.
All the data is available in this repository.

Access to the original VIW data: 
- https://webs.uab.cat/viw/corpus/
- https://transmediacatalonia.uab.cat/viw-data/public/

## AD2AT-MD: Movie Description

Fine-grained annotation of 12 films from MPII Movie Description [4] dataset.
AD2AT-MD provides alt text for 12 out of the 55 movies in MPII-MD, resulting in 3,607 text-image pairs.

####
To download AD2AT-MD images, you need to request access to MPII-MD dataset:
https://www.mpi-inf.mpg.de/departments/computer-vision-and-machine-learning/research/vision-and-language/mpii-movie-description-dataset/access-to-mpii-movie-description-dataset/ 
You will get a username and password.

- Navigate to the `download` repository
- Sign in to the MPII Movie Description access webpage and download the full list of video frames filenames (`downloadLinksJpg.txt`)
- Run `filterDownloadLinksJpg.sh`
- Run `wgetParallelProtected.sh downloadLinksJpgAd2at.txt <username> <password>`

The `AD2AT` repository structure should be as follows:

```
.
|-- download
|   |-- ad2atFrames.txt
|   |-- downloadLinksJpg.txt
|   |-- downloadLinksJpgAd2at.txt
|   |-- filterDownloadLinksJpg.sh
|   `-- wgetParallelProtected.sh
|-- jpgMD
|   |-- 1004_Juno (1 folder = 1 movie)
|   |   |-- 1004_Juno_00.00.32.849-00.00.35.458 (1 folder = 1 video clip)
|   |   |   `-- 0009.jpg (1 jpg = 1 frame)
|   |   `-- [...]
|   |-- [...]
|   `-- 1059_The_devil_wears_prada
|-- jpgVIW
|   |-- 243.jpg
|   |-- [...]
|   `-- 19505.jpg
|-- README.md
|-- annotations-AD2AT-MD.csv
`-- annotations-AD2AT-VIW.csv
```

## References

If you use the AD2AT data, please cite [1]:

```
@inproceedings{lincker2025ad2at,
 title={AD2AT: Audio Description to Alternative Text, a Dataset of Alternative Text from Movies},
 author={Lincker, Elise and Guinaudeau, Camille and Satoh, Shin'ichi},
 booktitle={International Conference on Multimedia Modeling},
 year={2025}}
```

1. Lincker, E., Guinaudeau, C., Satoh S.: AD2AT: Audio Description to Alternative Text, a Dataset of Alternative Text from Movies. In: International Conference on Multimedia Modeling (2025)
2. Matamala, A., Villegas, M.: Building an audio description multilingual multimodal corpus: the VIW project. Multimodal Corpora: Computer vision and language processing (2016)
3. Matamala, A.: The VIW project: Multimodal corpus linguistics for audio description analysis. Revista Española de Lingüística Aplicada/Spanish Journal of Applied Linguistics (2019)
4. Rohrbach, A., Rohrbach, M., Tandon, N., Schiele, B.: A dataset for movie description. In: Proceedings of the IEEE Conference on Computer Vision and Pattern Recognition (2015)