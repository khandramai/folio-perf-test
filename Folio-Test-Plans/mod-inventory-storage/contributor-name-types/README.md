Contributor-name-types load profile
---------------------------------
* The average load for contributor-name-types API is between 0 - 200 concurrent users
* As we continue to increase number of concurrent users to 1300, API is practically impossible to work with because on an average it takes more than 2 minutes per endpoint to get some response back. It also depends on machine configuration and what time of the day requests are being triggered. During heavy network traffic, API will timeout or JMeter tests will fail or will receive no http response due to database lock. 