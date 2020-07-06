# lab-platform-vpc

| vpc      | us-east-1       | us-east-1a      |   us-east-1b   |  us-east-1c    | 
|----------|:---------------:|:------------ --:|:--------------:|---------------:|
| sandbox  | 10.50.0.0/16    |                 |                |                |
| private  |                 | 10.50.0.0/19    | 10.50.32.0/19  | 10.50.64.0/19  | 
| public   |                 | 10.50.96.0/24   | 10.50.97.0/24  | 10.50.98.0/24  | 
| intra    |                 | 10.50.100.0/23  | 10.50.102.0/23 | 10.50.104.0/23 | 
|          |                 |                 |                |                |
| preview  | 10.51.0.0/16    |                 |                |                |
| private  |                 | 10.50.0.0/19    | 10.50.32.0/19  | 10.50.64.0/19  | 
| public   |                 | 10.50.96.0/24   | 10.50.97.0/24  | 10.50.98.0/24  | 
| intra    |                 | 10.50.100.0/23  | 10.50.102.0/23 | 10.50.104.0/23 | 
|          |                 |                 |                |                |
| nonprod  | 10.55.0.0/16    |                 |                |                |
| private  |                 | 10.50.0.0/19    | 10.50.32.0/19  | 10.50.64.0/19  | 
| public   |                 | 10.50.96.0/24   | 10.50.97.0/24  | 10.50.98.0/24  | 
| intra    |                 | 10.50.100.0/23  | 10.50.102.0/23 | 10.50.104.0/23 | 
|          |                 |                 |                |                |
| prod     | 10.60.0.0/16    |                 |                |                |
| private  |                 | 10.50.0.0/19    | 10.50.32.0/19  | 10.50.64.0/19  | 
| public   |                 | 10.50.96.0/24   | 10.50.97.0/24  | 10.50.98.0/24  | 
| intra    |                 | 10.50.100.0/23  | 10.50.102.0/23 | 10.50.104.0/23 | 


| subnet  | routes                         |
|---------|--------------------------------|
| public  | local, igw                     |
| private | local, natgw-public-us-east-1a |
| intra   | local                          |

