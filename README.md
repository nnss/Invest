Invest3
================

This applicationw as intened to follow the statos of investment, but is not quite usefull (just graphics the total of money).

Ruby on Rails
-------------

This application requires:

- Ruby 2.2.4
- Rails 4.2.7.1


Issues
-------------

  * Shoudl have a kind of paginate
  * the graphic should redirect to a login instead of crashing if the user is lont logged in

Changes
-------

security updates and minor chages, urgency=medium

  * highchart/stocks moved out as gems, inserted as direct JS in the application erb.
    I have some errors that I could not solve, and as this is quite fronzen to me now, just
    made the smallest changes so this could run without spending too much time.
  * moved out secret from devise.rb and into .env.sh (to be loaded before starting server)
  * updated some gems due security updtes (main reason of all changes)
  * updated README.md 

 -- Matias "nnss" Palomec <matiaspalomec@gmai.com>  Sat, 26 May 2018 00:22:32 -0300


License
-------
MIT

Copyright 2018, Matias "nnss" Palomec

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
