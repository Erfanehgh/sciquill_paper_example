Joint representation learning of region sets and metadata facilitates retrieval and annotation

**Motivation:**The high volume and heterogeneity of database from the biological experiments intensify the need for fast search system to process and retrieve related data. The simple meta-data matching approach failed to retrieve related but unannotated files. In addition, the similarity between the files that are related but not accurately annotated can not be captured by this approach.

**Results:** Here, we develop a search system to address the user information need for finding region sets based on the provided query. We use StarSpace model to simultaneously train a representation for user provided label and collection of BED files. The results show that our method can effectively retrieve related documents to a user specific need. The learned embedding of the BED file reflects the information of metadata. In addition to the human search, we evaluate our system using another application of the embedding to accurately annotate the data.

#Introduction 
  - Current systems:
      - Match search terms to metadata to retrieve region sets (ENCODE, Roadmap Epigenomics, ...)
      - Retrieve similar region sets given query region set (IGD, LOLA, GIGGLE, ...)
  - Our contribution:
      - We bridge the gap between the similarity search based on simple metadata matching and the query search that involves providing query region set and calculating the overlap.
      - We provide a search engine that goes directly from the search term to the region set.
      - Our approach can identify region sets without relying on metadata
          - We can search unannotated data
          - We can address inaccurate annotation
      - Our approach is fast because it compares low-dimensional numerical vectors, rather than computing overlaps
      - We have 3 scenarios:
        1. Scenario 1: metadata term -> region sets (current system #1)
        2. Scenario 2: region set -> metadata term
        3. Scenario 3: region set -> similar region sets (current system #2)
