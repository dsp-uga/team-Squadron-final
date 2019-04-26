


# Data Science Ethics Checklist

## A. Data Collection

 - [x] **A.1 Informed consent**: If there are human subjects, have they given informed consent, where subjects affirmatively opt-in and have a clear understanding of the data uses to which they consent?\
 There are no human subjects involved in the project and none of their information is used. All the information is merely numerical data.
 
 - [x] **A.2 Collection bias**: Have we considered sources of bias that could be introduced during data collection and survey design and taken steps to mitigate those?\
 Yes, we considered racial and gender bias. And we collected data from diverge backgrounds. 
 
 - [x] **A.3 Limit PII exposure**: Have we considered ways to minimize exposure of personally identifiable information (PII) for example through anonymization or not collecting information that isn't relevant for analysis?\
 This dataset does not use PII information. We remove subject names and their identity in the dataset collection. Also, considering the nature of data, which is numerical, nobody can actually collect any meaning information in any way. 

## B. Data Storage
 - [x] **B.1 Data security**: Do we have a plan to protect and secure data (e.g., encryption at rest and in transit, access controls on internal users and third parties, access logs, and up-to-date software)?\
 We will protect this data against any misuse by giving access to only machine learning researcher of this field. 
 
 - [x] **B.2 Right to be forgotten**: Do we have a mechanism through which an individual can request their personal information be removed?\
 The data does not contain PII exposure. However, we reserve the right for every individual. They can share their index number with us and we can remove their data from our dataset. 
 - [x] **B.3 Data retention plan**: Is there a schedule or plan to delete the data after it is no longer needed?\
 The data is provided by Santander bank on Kaggle and they will take care of the data. Hence we do not know what will be done to data. But in general, kaggle keeps data life long to help other people study and come up with better solutions which helps people to learn more too.   
     
## C. Analysis
 - [x] **C.1 Missing perspectives**: Have we sought to address blind spots in the analysis through engagement with relevant stakeholders (e.g., checking assumptions and discussing implications with affected communities and subject matter experts)?\
  Releasing the results but not releasing the model and data itself will prevent any outsider using it for any self-gain.
 
 - [x] **C.2 Dataset bias**: Have we examined the data for possible sources of bias and taken steps to mitigate or address these biases (e.g., stereotype perpetuation, confirmation bias, imbalanced classes, or omitted confounding variables)?\
  The data does not contain anything that could be pieced together to place a name and person to the data.
 
 - [x] **C.3 Honest representation**: Are our visualizations, summary statistics, and reports designed to honestly represent the underlying data?\
  The summary statistics are honest representations of the underlined data. Training and testing the model multiple times to reassure that the one-time-result was not by chance. We also provide images of different outputs of the preprocessed data. Demonstrating the actions we took and approaches which seemed valuable at the time.
  
 - [x] **C.4 Privacy in analysis**: Have we ensured that data with PII are not used or displayed unless necessary for the analysis?\
 Yes, we have removed all PII.  
 
 - [x] **C.5 Auditability**: Is the process of generating the analysis well documented and reproducible if we discover issues in the future?\
 Yes, we have created a thorough documentation to reproduce our results. 

## D. Modeling
 - [x] **D.1 Proxy discrimination**: Have we ensured that the model does not rely on variables or proxies for variables that are unfairly discriminatory?\
     No variables are discriminatory. Predicting future transactions doesn't depend on any unfair discriminatory information as it has nothing to do with that.
     
 - [x] **D.2 Fairness across groups**: Have we tested model results for fairness with respect to different affected groups (e.g., tested for disparate error rates)?\
 With our data being brain scans of humans, we would be interested if there does exist any unfairness across cultures. This is always one important questions to address before any project release, thus regardless if we as a group believe there is a chance for disparate error rates, it is our duty to check.

 - [x] **D.3 Metric selection**: Have we considered the effects of optimizing for our defined metrics and considered additional metrics?\
 For deep learning models: precision, recall, inclusion, and exclusion are the most appropriate and cover different aspects of the model's performance. They account for how well the model is selecting it's labels and how poorly it is performing.
 
 - [x] **D.4 Explainability**: Can we explain in understandable terms a decision the model made in cases where a justification is needed?\
 Yes, the group addressed different aspects of the model such that if there is any need to recall and explain a decision the model made.
 
 - [x] **D.5 Communicate bias**: Have we communicated the shortcomings, limitations, and biases of the model to relevant stakeholders in ways that can be generally understood?\
 The creators that developed the deep learning model have discussed the shortcomings and potential limitations that are at risk with these models with a language they can understand.

## E. Deployment
 - [x] **E.1 Redress**: Have we discussed with our organization a plan for response if users are harmed by the results (e.g., how does the data science team evaluate these cases and update analysis and models to prevent future harm)?\
 There is no way anyone can harm in any way as the data is completely numerical and doesn't have real or meaningful relation with anything. Also, data has been posted by kaggle which takes care of all possible harm that could possibly happen.
 
 - [x] **E.2 Roll back**: Is there a way to turn off or roll back the model in production if necessary?\
 Yes, that's the reason for version control. If there becomes some issues with a new release, such as a model that discriminates, then the team will take necessary actions.
 
 - [x] **E.3 Concept drift**: Do we test and monitor for concept drift to ensure the model remains fair over time?\
 As a group we did not test for concept drift.
 
 - [x] **E.4 Unintended use**: Have we taken steps to identify and prevent unintended uses and abuse of the model and do we have a plan to monitor these once the model is deployed?\
 We have included a section in the README file that addresses that this model is not to be used for any attempts to harm or put any person at risk. This model is used to purely be used in order to predict future transaction made by customer.

*Data Science Ethics Checklist generated with [deon](http://deon.drivendata.org).*
