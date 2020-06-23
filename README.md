# My PC

- [My PC](#my-pc)
  - [What you will see here](#what-you-will-see-here)
  - [Your first steps](#your-first-steps)
  - [The parts to make this work](#the-parts-to-make-this-work)
      - [1. The BIOS/Boot phase](#1-the-biosboot-phase)
      - [2. The Operational System (OS) phase](#2-the-operational-system-os-phase)
      - [3. The User applications phase](#3-the-user-applications-phase)
      - [4. The automation phase](#4-the-automation-phase)
  - [Tips](#tips)

Read carefully. This project assumes that you have some knowledge of [Terminal](https://medium.com/@grace.m.nolan/terminal-for-beginners-e492ba10902a), [Git](https://rogerdudler.github.io/git-guide/) and [Ruby Modules/Classes](http://ruby-for-beginners.rubymonstas.org/preface.html).
If you don't know it yet, feel free to research more by clicking on the links or googling further.

This project goal is to help new developers understand the structures that make a programming language, the way to perform control flow and somewhat play around with how computers "work".


## What you will see here

You will see a series of tasks you have to do in order for you "computer" to work. Fear not, this computer can also be extended to perform many things for you like finding and saving images, sending emails for you or ordering food. You decide where your computer goes.

These tasks will be then tested against the `RSpec` test suite, which you can call by using `rake`.

Your job is to make sure every phase is correctly linked (Boot -> OS -> Applications) and the program only exits when a user types `exit`.


## Your first steps

Often you can see projects that explain you how to run them, but this one is different: there are only a set of rules and you have to figure out what's missing to run the project. Check the files and find how `rake` can run. Tip: make sure you can run `bundle install` without any errors.

Stuck? Your best friend is Google: e.g. `How to install the ruby ...` or `How to split arrays in ruby` are common terms you might be looking for. Keeping in mind that this is a fun pet project to elevate your knowledge and finding the answers by googling them is also part of the learning process.


## The parts to make this work


#### 1. The BIOS/Boot phase

Computers normally have what we can call a `Boot phase`. It's where everything gets loaded/recognized (e.g. your keyboard or monitor) and performs some checks in order to start correctly. This phase might be known to you as the [BIOS screen](https://preview.redd.it/1iq44wu231y21.png?width=960&format=png&auto=webp&s=9fd8dc0947eff004a5c3a26937679e8465b31e7a).

Your job here is to create a similar screen and avoid printing everything at once like a good BIOS would do. It should wait a bit before printing every line. Feel free to create any style for it. It's your computer after all.

When you are done, run the `rake` command to test or use `ruby ./lib/computer.rb` to actually start your project in your terminal.


#### 2. The Operational System (OS) phase

Often you might have seen the word `OS` somewhere. If you are using a Mac, your system is often called `MacOS`. OS stands as "Operational System" and it's a series of programs that combined make a system that you can use. Some of them have GUIs (General User Interfaces) with a pointer (the mouse) and a pretty start screen.

Our OS won't have a pointer, but we can mimic some of the known behaviors an OS has. Our first job is to prompt a user for a PIN to securely access their computer. Your job is to prompt the user and check if the PIN matches, after the boot, and keep prompting for a PIN if it's not correct.


#### 3. The User applications phase

After successfully authenticating a user, your next task is to create applications -- a set of programs that can execute specific tasks and return something you need.

For the beginning, your task is to list the applications in the computer and allow a user to type 1) the application name or 2) the application number (e.g. `1` and `Enter` to use a Calculator for instance).

The first application is what we will call `The Calculator`. This application is your simple, everyday calculator with a caveat: it must accept written input.

The line below exemplifies what's expected:

Given that a user is logged in and now chooses the calculator app, this could be presented:

```bash
######## ################ ################ #####
## Welcome to my Personal Computer Calculator
######## ################ ################ #####

> Type your operation here.
```

The caveat is how you will input your operations: they must be written as plain text:


```bash
# User input
> 5 + 5 - 2 + 3 - 1
```

This will then print the final result of `10`. The calculation should respect `-` and `+` and should be interpreted from left to right.

A user can then type `exit` to exit the application and go back to the list of applications.


#### 4. The automation phase

To be written soon.


## Tips

1. Run `rake` to check for tests. They tell you a story of how and what should be implemented. Pay attention to the error messages.
2. Don't forget to `require_relative` files if you need them. It might be that the `Boot` class needs the login and so on...
3. Use loops (`each` or `map`) to check for different number of things coming in.
4. Run `rake` constantly to check for `Rubocop` (our Linter -- makes things follow good practices) issues.
