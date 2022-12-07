# video-timestamp-and-summary-generator
## Methodology
The method starts by calculating superframe cut scores,
motion scores and uniqueness scores of each frame in
the video. The different scores that are calculated are colourfulness, contrast, edges and superframe
quality. Then a threshold filter is applied to all frames
and their timestamps. From the segments which are
above the threshold value, using dimension reduction and dy-
namic clustering the keyframes are determined. The
key frames are given as output and are saved. Two such collections are produced, one based on
superframe cuts for the summary and the second for
the timestamps in the videos. Next, InceptionV3 is used as a preprocessing layer.
A tf.keras model is generated where the output layer
is the last convolutional layer in the InceptionV3 ar-
chitecture. CNN encoder and a RNN decoder is
used for the entire model.

Presented at [2022 Asian Conference on Innovation in Technology (ASIANCON)](https://ieeexplore.ieee.org/xpl/conhome/9908521/proceeding)

DOI: [10.1109/ASIANCON55314.2022.9909008](https://doi.org/10.1109/ASIANCON55314.2022.9909008)
