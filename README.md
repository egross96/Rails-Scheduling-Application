
# SchedulingApplication

<h1>
  This application runs on Rails V 2.7.1. <br>
  Any user running this for the first time must invoke the load_data rake task to populate the database with CSV info.<br>
  The database being used for this is SQLite<br>
 </h1>
 
 <p>
  Note: I've encountered a few errors with the popup on the whitespace and gave it my best shot. Javascript is not my strong point so this is all a learning experience. The way I thought of it is creating a div for each space between appointments (not including start to the first or first to the end, assuming this is how it was supposed to be per the specifications). My issues arises in my looping when it adds another div that encompasses the whitespace and all the time slots between it. If you look in the inspector, the whitespace elements have their own divs and properly assigned ID's. The error in this popup is from the bogus divs on top of it. I tried to manually disable them for demo purposes, but to no avail. Either way, I've had fun working through this, if I had more time I would have worked on fixing the bugs and making this work properly. Also had to skip out on Heroku deployment because it does not support SQLite
  </p>
