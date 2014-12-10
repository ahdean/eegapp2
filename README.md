eegapp2
=======
This app is intended to act as a tool to assist in the exploratory analysis of the data from the predictive analytics challenge from the American Epilepsy Society Seizure found here https://www.kaggle.com/c/seizure-prediction.

Steps to run the app:

1) Download and open the associated files from this github page. 

2) Install and load the shiny package with the following commands:

install.packages("shiny")

library(shiny)

3) Run the app with the following line

runApp("~/Downloads/eegapp2-master")

Note that the run command assumes that the app folder eegapp2-master is located in your downloads directory (standard location for macs). If your EEGapp downloaded folder is not located in downloads you will have to update the file directory in the path variable to reflect the new location of the folder. 
