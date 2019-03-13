Workout 01(GSW Shot Charts) Report
================
Xueqing Zheng

Introduction
------------

This report is to give a summary of the performance of five Golden State Warriors players in 2016 season. I analysis the shot data of these five star basketball players, Andre Iguodala, Draymond Green, Kevin Durant, Klay Thompson and Stephen Curry.

------------------------------------------------------------------------

#### Background

Here is little background of these five players. As I know nothing about NBA, I do some research of each player on [Wikipedia](https://www.wikipedia.org) and put the link of each player below.

-   [Andre Iguodala](https://en.wikipedia.org/wiki/Andre_Iguodala)

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Andre_Iguodala_2016_%28cropped%29.jpg/375px-Andre_Iguodala_2016_%28cropped%29.jpg" style="width:20.0%" />

-   [Draymond Green](https://en.wikipedia.org/wiki/Draymond_Green)

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Draymond_Green_against_Washington_%28cropped%29.jpg/330px-Draymond_Green_against_Washington_%28cropped%29.jpg" style="width:20.0%" />

-   [Kevin Durant](https://en.wikipedia.org/wiki/Kevin_Durant)

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/f/fb/Golden_State_Warriors_Small_Forward_Kevin_Durant_%28cropped%29.jpg/330px-Golden_State_Warriors_Small_Forward_Kevin_Durant_%28cropped%29.jpg" style="width:20.0%" />

-   [Klay Thompson](https://en.wikipedia.org/wiki/Klay_Thompson)

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Klay_Thompson_vs._Jared_Dudley_%28cropped%29.jpg/390px-Klay_Thompson_vs._Jared_Dudley_%28cropped%29.jpg" style="width:20.0%" />

-   [Stephen Curry](https://en.wikipedia.org/wiki/Stephen_Curry)

<img src="https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Stephen_Curry_Shooting_%28cropped%29.jpg/330px-Stephen_Curry_Shooting_%28cropped%29.jpg" style="width:20.0%" />

These five star players are the *Death lineup* of Golden State Warriors. Stephen Curry can be called the greatest three-point shooter. Klay Thompson is perennial two-way All-Star. Andre Iguodala and Draymond Gree are defenders with versatility. Kevin Durant is a extraordinary scorer.

------------------------------------------------------------------------

#### Data

The data I used in this report is from [data](https://github.com/ucb-stat133/stat133-hws/tree/master/data). These data give us the shooting data of these five players in 2016 season. Here is a example of what the data files contain:

|    X| team\_name            | game\_date |  season|  period|  minutes\_remaining|  seconds\_remaining| shot\_made\_flag | action\_type         | shot\_type     |  shot\_distance| opponent              |    x|    y| name           |  minute|
|----:|:----------------------|:-----------|-------:|-------:|-------------------:|-------------------:|:-----------------|:---------------------|:---------------|---------------:|:----------------------|----:|----:|:---------------|-------:|
|    1| Golden State Warriors | 3/24/17    |    2016|       3|                   2|                  35| shot\_no         | Alley Oop Dunk Shot  | 2PT Field Goal |               0| Sacramento Kings      |    0|    1| Andre Iguodala |      34|
|    2| Golden State Warriors | 11/3/16    |    2016|       2|                  10|                  51| shot\_no         | Alley Oop Dunk Shot  | 2PT Field Goal |               1| Oklahoma City Thunder |  -12|   13| Andre Iguodala |      14|
|    3| Golden State Warriors | 10/25/16   |    2016|       2|                   0|                   6| shot\_yes        | Alley Oop Dunk Shot  | 2PT Field Goal |               0| San Antonio Spurs     |    0|    1| Andre Iguodala |      24|
|    4| Golden State Warriors | 11/3/16    |    2016|       2|                  11|                  10| shot\_no         | Alley Oop Layup shot | 2PT Field Goal |               1| Oklahoma City Thunder |   -1|   11| Andre Iguodala |      13|
|    5| Golden State Warriors | 1/8/17     |    2016|       4|                   0|                  32| shot\_yes        | Cutting Dunk Shot    | 2PT Field Goal |               0| Sacramento Kings      |    0|    1| Andre Iguodala |      48|

------------------------------------------------------------------------

Analysis
--------

There are three table below, which show the two-point, three-point and effective shooting percentage. All three tables are arranged in descending order by percentage.

##### 2PT Effective Shooting % by Player

| name           |  total|  made|  perc\_made|
|:---------------|------:|-----:|-----------:|
| Andre Iguodala |    210|   134|   0.6380952|
| Kevin Durant   |    643|   390|   0.6065319|
| Stephen Curry  |    563|   304|   0.5399645|
| Klay Thompson  |    640|   329|   0.5140625|
| Draymond Green |    346|   171|   0.4942197|

From 2PT Effective Shooting table, we can see that Andre Iguodala has the highest two-point shot percentage among these five players with a minor difference between him at 64% and Kevin Durant at 61%. But there is a substantial difference between him and the rest three players: Stephen Curry at 54%, Klay Thompson at 51% and Draymond Green at 49%.

##### 3PT Effective Shooting % by Player

| name           |  total|  made|  perc\_made|
|:---------------|------:|-----:|-----------:|
| Klay Thompson  |    580|   246|   0.4241379|
| Stephen Curry  |    687|   280|   0.4075691|
| Kevin Durant   |    272|   105|   0.3860294|
| Andre Iguodala |    161|    58|   0.3602484|
| Draymond Green |    232|    74|   0.3189655|

From 3PT Effective Shooting table, we can see that Klay Thompson has the highest three-point shot percentage among these five players with Stephen Curry (at 61%) and Kevin Durant (at 39%) have the close percentage. But there is a substantial difference between Klay Thompson and the rest two players: Andre Iguodala at 36%, Draymond Green at 32%.

##### Effective Shooting % by Player

| name           |  total|  made|  perc\_made|
|:---------------|------:|-----:|-----------:|
| Kevin Durant   |    915|   495|   0.5409836|
| Andre Iguodala |    371|   192|   0.5175202|
| Klay Thompson  |   1220|   575|   0.4713115|
| Stephen Curry  |   1250|   584|   0.4672000|
| Draymond Green |    578|   245|   0.4238754|

From Effective Shooting table, we can see that Kevin Durant has the highest effective shot percentage among these five players with a minor difference between him at 54% and Andre Iguodala at 52%. But there is a substantial difference between these two players and the rest three players: Klay Thompson at 47%, Stephen Curry at 47% and Draymond Green at 42%.

#### Summary

Looking at these three tables together wo can find that all these five players have excellent ability of three-point shot. Stephen Curry is the only one who made three-point shot more than two-point shot. Considering total shots, Stephen Curry and Klay Thompson have the similar number and are much more than the rest players. Andre Iguodala has the minimum total shot, this may because he is a bench player for the most games in 2016 season. Klay Thompson, Stephen Curry and Kevin Durant score the majority of the points, and majority of Stephen Curry's points came from three-point shots.

------------------------------------------------------------------------

Discussion
----------

While these three tables do not offering us a visual graph of the shot-data, I then created the graph below and used facetting to show the shot charts in one image which makes it much easier to compare.

<img src="../images/gsw_shot_charts.png" width="80%" style="display: block; margin: auto;" />

Andre Iguodala scored most of his three-shot in wing areas. And his effective two-shots took place most under the backboard. Wing areas are relatively easier to shot and most of NBA players have highest three-shot percentage there. Draymond Green has the lowest three-point percentage and the majority of his two-shots also happened most under the backboard. Stephen Curry likes three-point shot more than two-point shot and he still has a high three-point percentage even though he has the high number of three-shot, which shows that Stephen Curry is really a great three-point shooter. Klay Thompson has the highest three-point percentage and his field goal scattered on the court. This shows that Klay Thompson is a star player. The team already have Stephen Curry and Klay Thompson these two great three-point shooter, Draymond Green focuses more on two-point field goal. This makes Draymond Green's overall effective shot has the high percentage.

------------------------------------------------------------------------

References
----------

1.Wikipedia

-   <https://en.wikipedia.org/wiki/Andre_Iguodala>
-   <https://en.wikipedia.org/wiki/Draymond_Green>
-   <https://en.wikipedia.org/wiki/Kevin_Durant>
-   <https://en.wikipedia.org/wiki/Klay_Thompson>
-   <https://en.wikipedia.org/wiki/Stephen_Curry>
-   <https://en.wikipedia.org/wiki/Death_Lineup>

2.Basketball Reference

-   <https://www.basketball-reference.com/players/i/iguodan01.html>
-   <https://www.basketball-reference.com/players/g/greendr01.html>
-   <https://www.basketball-reference.com/players/d/duranke01.html>
-   <https://www.basketball-reference.com/players/t/thompkl01.html>
-   <https://www.basketball-reference.com/players/c/curryst01.html>
