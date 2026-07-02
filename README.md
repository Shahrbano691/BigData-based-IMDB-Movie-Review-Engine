## IMDb Big Data Movie Review Engine

The **IMDb Big Data Movie Review Engine** is a Big Data and Machine Learning-based application designed to efficiently analyze large-scale IMDb movie datasets and provide intelligent movie recommendations. The project addresses the challenges of processing massive volumes of movie metadata and user reviews by leveraging **Apache Hadoop**, **Apache Pig**, and **HDFS** for scalable data storage and distributed processing.

The system performs comprehensive analysis of movie reviews using **sentiment analysis** to classify user opinions as positive or negative. Multiple machine learning algorithms were evaluated, with **Logistic Regression** achieving the best performance and being selected for the final implementation. Text preprocessing techniques, including tokenization, stop-word removal, and TF-IDF vectorization, were applied to improve classification accuracy.

In addition to sentiment analysis, the project implements a **content-based recommendation system** that suggests movies based on user preferences such as genres, actors, and directors using **Cosine Similarity**. The processed data and recommendation results are integrated into a user-friendly **Flask** web application, allowing users to explore movie insights and receive personalized recommendations.

### Key Features

* Big Data processing using **Apache Pig** and **HDFS**
* Large-scale analysis of IMDb movie metadata and user reviews
* Sentiment analysis using Machine Learning
* Content-based movie recommendation system
* TF-IDF vectorization and Cosine Similarity for recommendations
* Flask-based interactive web interface
* Scalable architecture for handling large datasets

### Technologies Used

* Python
* Apache Hadoop (HDFS)
* Apache Pig (Pig Latin)
* Flask
* Scikit-learn
* NLTK
* TF-IDF Vectorizer
* Cosine Similarity
* Jupyter Notebook
* VS Code
This project was developed as a **Final Year Project (BS Computer Engineering)** to demonstrate the integration of Big Data technologies and Machine Learning for building a scalable and intelligent movie review and recommendation system.
