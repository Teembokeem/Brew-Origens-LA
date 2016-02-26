#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;P R O J E C T 2:

#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;B R E W O R I G E N S L A

---
---
![alt text](https://i.imgur.com/LCcoBBv.png)

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[TRELLO](https://trello.com/b/jxbGrr33)
[GITHUB](https://github.com/Teembokeem/CoffeeApp) [The Site](https://agile-river-91261.herokuapp.com/)


###The [Coffee App] web app is a hub for all things coffee-roast-related. We select up and coming local coffee roasters, and ask them to host a private cupping with our team of professional coffee sippers. We rate them on a five-point scale, made to ensure that every roast is given love and care in considering them for a coveted invite to our curated lineup. 

-
-
<br>
<br>
<br>
#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;_"F R A G R A N C E &nbsp;&nbsp;|&nbsp;&nbsp; A R O M A&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  B R E A K &nbsp;&nbsp;|&nbsp;&nbsp; B R I G H T N E S S &nbsp;&nbsp;|&nbsp;&nbsp;&nbsp; N O T E S"_
<br>
<br>
<br>
<br>

#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T H I S &nbsp;&nbsp;I S &nbsp;&nbsp;W H E R E&nbsp;&nbsp; **Y O U** &nbsp;&nbsp;C O M E &nbsp;&nbsp;I N

-
###Sipping from the best of the best roasters is nice, but this is for **YOU**. We're all about culture and community. We love passion; we love commitment to perfection; we love that you love things. 

###We're here to to give roasters more visibility to the hard work and attention to detail they've put in their craft. 

###We're here to help users discover new products of pioneers and creatives in the coffee industry, and give them more reasons to stay franchise-free. 

#&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;T H E &nbsp;&nbsp;&nbsp;G O L D &nbsp;&nbsp; C A R D &nbsp;&nbsp;I S N T &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E V E R Y T H I N G

<br>
<br>
<br>
<br>

#C O M E &nbsp;&nbsp;T A S T E &nbsp;&nbsp; T H E &nbsp;&nbsp; D I F F E R E N C E

###&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[BREW ORIGENS LA]
---
<br>
<br>
<br>
<br>

Also in the README.md file:

Explanations of the technologies used.

Installation/startup instructions.

Unsolved problems, etc.

#Brew Origens LA
##The Model
###Five Models:

 ![alt text](https://i.imgur.com/gqZUIfu.png)
 
### Users:
>  Have many followers and many followed
>
>  Three different tiers of authorization
>
>>Regular Users
>>
>>Panel Members
>>
>>Admins
>
>Have one post/rating on any roast
>
>has many activities
>

##User Functions:

###Users log in on the landing page with their email and password:

![alt text](https://i.imgur.com/u3Z3vki.png)

###Or Sign in by pressing the text in the middle!

![alt text](https://i.imgur.com/dZZvyAy.png)

###which redirects to:

![alt text](https://i.imgur.com/FqE8XUb.png)

###Logging in will redirect you to the home page :)

![alt text](https://i.imgur.com/f1Ecx93.png)

###Users can edit their profile via the Profile link at the top, which shows the edit form:

![alt text](https://i.imgur.com/Q7cVCf6.png)

###their followers and followed:
![alt text](https://i.imgur.com/CUTU5L6.png)

###and a newsfeed of their activities! (sometimes a little creepy)
![alt text](https://i.imgur.com/kKTPaNn.png)

##Roast Functions:

###The main page of roasts in a carousel style display, sorted by ratings!!

![alt text](https://i.imgur.com/CUTU5L6.png)

###Clicking on one will direct you to that single item!
![alt text](https://i.imgur.com/c5P3J5c.png)

###You'll notice that depending on your auth, your rating schema will look different :)

#####Regular Users:
![alt text](https://i.imgur.com/8aL9Gwk.png)

#####Panel Users:
![alt text](https://i.imgur.com/1KJvoXD.png)

###Ratings are dynamically updated depending on your rating, so be fair!

###Users can post only once, and edit or delete only their own posts
![alt text](https://i.imgur.com/w0i4Asd.png)

###Adding/editing/deleting Roasts are only available to the Admin, who has a different web page layout entirely!

#####Index
![alt text](https://i.imgur.com/JF26g8R.png)
#####Add!
![alt text](https://i.imgur.com/YnPmzTc.png)
#####Delete
![alt text](https://i.imgur.com/4JcMxew.png)

##Getting Started:
1. Open up your web browser.
2. Input link https://shrouded-ocean-86275.herokuapp.com/.
3. Log in to set up a personalized home page.

##Installation:
1. fork repo from my Repo ![alt text](https://i.imgur.com/vtdbj7V.png)
2. install heroku toolbelt from [Heroku Toolbelt](https://toolbelt.heroku.com/)
3. prepare for deployment by following the instructions on [Heroku](https://devcenter.heroku.com/articles/git)

##Heroku:
1. Create an account on www.heroku.com
2. Install Heroku Toolbelt
3. ```heroku login```
4. ```heroku create```
5. ```heroku git:remote -a shrouded-ocean-86275```
6. ```git push heroku master```
7. ```heroku run rake db:migrate```
8. ```heroku run rake db:seed```

##Languages and frameworks used:
###FRONT-END
1. HTML5/CSS3
2. JAVASCRIPT
3. MODERNIZR
4. BOOTSTRAP
5. JQUERY
6. AJAX

###BACK-END
1. RUBY
4. RUBY ON RAILS
5. POSTGRESQL
6. PRY

##Looking Forward:
1. Metrics for ratings
2. Single Page Sign-up "Trailer"
3. Featured Roast, at the top of main page, and link to own page view, showing goodies.
4. Make the whole thing A single Page
