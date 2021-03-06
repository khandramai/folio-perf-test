Loan-renewals load profile
-----------------------------------------------
* The average load for Loan-renewals API is between 0 - 50 concurrent users
* As we continue to increase the number of concurrent users from 1 to 12 gradually like 1/5sec -> 4/5sec -> 8/5sec -> 12/10sec, API breaks.  
* 1/5sec - means 1 thread(user) starts in 5 seconds
* 12/10sec - means all 12 threads(users) starts in 10 seconds
* Just before the API breaks, it takes more than a minute for some endpoints such as GET all mod-circulation loans and POST to create new loan to get a response back. 
* It also depends on machine configuration and what time of the day requests are being triggered. During heavy network traffic, API will timeout or JMeter tests will fail or will not receive any HTTP response due to database locking.