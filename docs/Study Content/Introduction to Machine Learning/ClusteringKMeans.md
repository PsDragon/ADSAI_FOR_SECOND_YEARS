---
sort: 9
---

# Clustering: K-Means

We start with a introduction to clustering. We will then continue with the workshop, which covers a commonly used clustering algorithm - the k-means algorithm. 

## Learning Objectives

- [ ] Understand unsupervised learning, in particular clustering.

## Questions or issues?

If you have any questions or issues regarding the course material, please first ask your peers or ask us in the Q&A in Datalab!

<div style="padding: 15px; border: 1px solid transparent; border-color: transparent; margin-bottom: 20px; border-radius: 4px; color: #8a6d3b;; background-color: #fcf8e3; border-color: #faebcc;">
Tip: Note down any important questions you might have!
 </div>
Good luck!


##  What is clustering?

Clustering algorithms (or cluster analysis) aim to group data points into
clusters such that data points within a cluster are more closely related
to one another than data points assigned to different clusters.

Suppose we are given a dataset with the following data points:

<figure>
    <img src=".\images\clus1.PNG" />
    <figcaption></figcaption>
</figure>
<br>

The goal of clustering algorithm is to automatically find stucture in the data, that allows us to infer groups of data points that are in some way similar, althought note the groups need not always correspond to real-life categories.

<figure>
    <img src=".\images\clus2.PNG" />
    <figcaption></figcaption>
</figure>
<br>

Examples of clustering applications are:
- [ ] Recommendation engines: netflix grouping movies based on genre
- [ ] Search engines: group search results based on topic (e.g., news)
- [ ] Market segmentation: group customers based on geography, demography, and behaviors
- [ ] Image segmentation: group medical X-rays images into OK (no disease) and NOK (possible disease)

Please watch the following video to get an insight into clustering analyses.

<!-- blank line -->
<figure class="video_container">
<iframe width="560" height="315" src="https://www.youtube.com/embed/IUn8k5zSI6g" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<!-- blank line -->

As discussed in the above video, clustering is an example of **Unsupervised Learning**, as we do not provide the
algorithm with explicit labels. The algorithm automatically looks for underlying
features in the dataset which lead to clusters which are similar.

## K-Means Clustering

One of the most commonly used clustering algorithms is the **K-Means** algorithm. The goal of the K-Means algorithm is to find clusters of data points such that the distance between the data points within a cluster is minimized, and the distance between the clusters is maximized. The k-means algorithm, while being relatively simple to understand, is a powerful algorithm that can be used for a variety of clustering tasks.

Please watch the following video to get an insight into K-Means Clustering.

<iframe width="560" height="315" src="https://www.youtube.com/embed/lQ39ZRFfYbI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>


## Blended Learning: DataCamp

Now, we're introduced to Cluster analysis it's time ground down these fundamental by doing a interactive workshop on the clustering algorithm. Open the [Cluster Analysis in Python](https://app.datacamp.com/learn/courses/cluster-analysis-in-python){:target="_blank"}.


## Assignment

Create a new markdown file in your repository called `ClusteringKMeans.md` and answer the following questions:

1. What is the difference between supervised and unsupervised learning?
2. In your opinion, what are the advantages and disadvantages of unsupervised learning?
3. List 3 examples of unsupervised learning.
4. Looking back at the creative brief, are there applications ? Be creative and think outside the box!



# Preparation for the DataLab

- [ ] Upload the completed `ClusteringKMeans.md` assignment to Github.
