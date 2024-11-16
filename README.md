# Penerapan Metode Multinomial Naive Bayes Dengan Seleksi Fitur Information Gain Untuk Analisis Sentimen Terhadap Layanan Indihome

## Introduction
With the digital transformation, PT. Telkom is expected to prepare itself, especially in providing internet services. PT. Telkom's product that is already widely known by the public is Indihome. Indihome products have been distributed throughout Indonesia with various innovations made to provide the best service to customers. One of the innovations made is the MyIndihome application which is expected to provide more responsive services through service complaint features, chat with Indita to get information about Indihome services, and information on Telkom plaza locations throughout Indonesia. The increasing number of Indihome users makes PT. Telkom must always be ready to face customer complaints and opinions that are usually channeled through various means, such as on the Google Play Store site MyIndihome application. So, to make it easier for companies to identify customer reviews of Indihome services, it is necessary to conduct sentiment analysis using the Naïve Bayes algorithm with information gain feature selection.

## Data Source
1000 customer review data of PT. Telkom via the MyIndihome application on Google Play obtained on May 9, 2023 at 21.45

## Goals
Implementing the Multinomial Naïve Bayes method in conducting sentiment analysis of customer reviews of indihome services to determine the performance of the classification model through accuracy and AUC values. In addition, the use of information gain feature selection to obtain relevant features to perform more optimal classification.

## Analytics Approach
Data analysis using word cloud text visualization to represent frequently prominent words in 1000 customer reviews. Word cloud displays words with different sizes, frequently appearing words will have a larger size and rarely appearing words will have a smaller size. The negative review word cloud shows that the words that frequently appear in negative class reviews are “aplikasi”, “masuk”, “privasi”, “lapor”, “bijak”, “layan”, “buka”, “lambat”, “indihome”, “muat”. While the positive review word cloud shows that the words that frequently appear in positive class reviews are “aplikasi”, “mudah”, “indihome”, “cepat”, “bagus”, “layan”, “bantu”, “internet”, “fitur”, “pakai”.

## Metric Evaluation
Metric evaluation using confusin matrix. The use of feature selection with a threshold of 0.001 obtained 633 relevant features from the initial 1260. The results of the classification performance of MyIndihome customer reviews using the Multinomial Naïve Bayes method without feature selection obtained an accuracy value of 91% with an AUC value of 90%, while classification with feature selection with information gain obtained an accuracy value of 93% with an AUC value of 91%. Thus, it can be concluded that the presence of information gain feature selection is able to provide better classification performance results and is able to increase the accuracy value and AUC value.
