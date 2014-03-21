wdi_project_01
==============
what@bout - local news and events application

What's the point of this?
-------------------------
To provide an easy to use way of finding out what's going on around you. This differs to twitter or a news site where you need to know what to search for, it is instead lcocation based. 

What will it need?
------------------
Three models (maybe four)
- registered user
- posts
- post updates (these are also a post but they belong to the initial post)
- post categories could also be a model?

Intended flow
-------------
viewing news/events
1. a user goes to the app and it initially shows a local map, with point markers overlayed - default settings would be a small radius (up to 2-5km?) and recent posts only (last 2-3 hours?)
2. user can click a point marker to find out what's going on at that point
3. user can then update that post with more news about it, or they can also confrim/deny that what was posted was true (user must register/login to comment or confirm/deny)

posting news/events
1. if you see something going on, you can post quickly and easily (must be registered and logged in though). It owuld be nice to be able to add a photo, headline, body copy and select categories (through set categories? or make this organic?). Geolocation needs to also be saved (it's the whole point!)
2. if you see something and someone has already posted it, the system should prompt you to update the previous post instead of posting new

Resources
---------
will rely on a geolocation gem - http://www.rubygeocoder.com/ - allows use of lat/long


