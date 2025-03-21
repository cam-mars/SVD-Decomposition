# 🌊 Down The Hatch: Diving Deep into the Mariana Trench


By: Cameron Mars, Jerry Vanim-Botting, Noah Isakson

## 📘 Overview

This project explores real-world oceanographic data from NOAA to analyze the **Mariana Trench**, the deepest point in Earth's oceans. Using linear algebra techniques, including **eigenvalue decomposition** and **incomplete singular value decomposition (SVD)**, we compressed a large matrix of depth data to enable efficient analysis while preserving accuracy.

## 🧪 Objectives

- Visualize NOAA depth data with contour and surface plots
- Compute eigenvalues and eigenvectors of the matrix using iterative methods
- Apply **Gram-Schmidt orthogonalization** to extract the top 50 eigenvectors
- Use **Incomplete SVD** to reduce the original matrix (~1.9 million entries) to ~140,000 entries
- Compare compressed data against original to verify data integrity

## 🔍 Key Results

- **Maximum Depth (Raw):** 10,930 meters  
- **Average Trench Depth (Raw):** ~7.2 km  
- **Maximum Depth (Compressed):** 10,882 meters (error: 0.439%)  
- **Average Trench Depth (Compressed):** ~7.73 km (error: 0.361%)

- **Data Reduction:** From 1,900,800 to ~140,000 elements (~7.4% of original)

## 📈 Methods Used

- Iterative Eigenvector Estimation (Power Method)
- Gram-Schmidt Orthogonalization
- Singular Value Decomposition (SVD)
- Matrix Compression and Reconstruction
- MATLAB for numerical computation and visualization

## 📊 Tools

- **Language:** MATLAB  
- **Data Source:** NOAA depth matrix of the Mariana Trench  
- **Visuals:** Contour plots, surface plots, eigenvector heatmaps

## 🧠 Learnings

This project demonstrates how powerful linear algebra techniques like eigen-decomposition and SVD can be applied to real-world data to perform **dimensionality reduction** while preserving the most meaningful information. It also highlights tradeoffs between compression and precision in scientific computing.

---

*For more technical details, refer to the full report and MATLAB code in the `Appendix` sections.*
