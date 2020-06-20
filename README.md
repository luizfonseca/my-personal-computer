# My PC

Ready carefully. This project assumes that you have some small knowledge of Terminal, [Git](https://rogerdudler.github.io/git-guide/) and Modules/Classes. If you don't know it yet, feel free to dive into them by clicking on the links or googling further.

This project aims to help new developers understand the structures that make a programming language, the way to perform control flow and somewhat understand how computers "really" work behind the scenes.

It's very straightforward and can be modified to use other programming languages as well.

## What you will see here

You will see a series of tasks you have to do in order for you computer to work. Fear not, this computer can also be extended to perform many things for you like finding and saving images, sending emails for you or ordering food. You decide where your computer goes.

These tasks will be then tested against the `RSpec` test suite, which you can call by using `rake`.


## Your first steps

Often you would see projects that offer you everything to run them, but this one is different: there are only a set of rules and you have to figure out what's missing to run the project. Check the files and find how `rake` can run.

Stuck? Your best friend is Google: e.g. `How to install the ruby ...` or `How to split arrays in ruby` are common terms you might be looking for. Keeping in mind that this is a fun pet project to elevate your knowledge and finding the answers by googling them is also part of the learning process.


## The parts to make this work


#### 1. The BIOS/Boot phase

Computers normally have what we can call a `Boot phase`. It's where everything gets loaded/recognized (e.g. your keyboard or monitor) and performs some checks in order to start correctly. This phase might be known to you as the [BIOS screen](https://preview.redd.it/1iq44wu231y21.png?width=960&format=png&auto=webp&s=9fd8dc0947eff004a5c3a26937679e8465b31e7a).

Your job here is to create a similar screen and avoid printing everything at once like a good BIOS would do. It should wait a bit before printing every line. Feel free to create any style for it. It's your computer after all.

When you are done, run the `rake` command to test or use `rake run` to actually start your project in your terminal.


#### 2. The Operational System (OS) phase

Often you might have seen the word `OS` somewhere. If you are using a Mac, your system is often called `MacOS`. OS stands as "Operational System" and it's a series of programs that combined make a system that you can use. Some of them have GUIs (General User Interfaces) with a pointer (the mouse) and a pretty start screen.

Our OS won't have a pointer, but we can mimic some of the know behaviors an OS has. Our first job is to prompt a user for a PIN to securely access their computer. Your job is to prompt the user and check if the PIN matches, after the boot.


#### 3. The User applications phase


#### 4. The automation phase