<a name="readme-top"></a>

<div align="center">

  <br/>

  <h3><b>Blog project</b></h3>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [Blog project] <a name="about-project"></a>

> Build a Blog project ruby App to enable users to create posts, giving likes and writes comments.


**[Blog project]** is built using ruby on rails and following this ERD.
![image](https://user-images.githubusercontent.com/22921170/208265293-7149090e-faa0-4809-87eb-286b03d4b800.png)



## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

> ruby, ruby on rails, rubocop linter, rspec testing

<!-- Features -->

### Key Features <a name="key-features"></a>

> Added unit tests for controllers and models using Rspec-rails library 
 
<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Future Features <a name="future-features"></a>

> Add group model to enable creating groups and make it look like a social website 
> Add more fancy styling  
 

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

### Prerequisites

In order to run this project you need:
## Windows users
Download the latest version of ruby using this [link](https://rubyinstaller.org/downloads/)
## Linux
coming soon
## Macos
coming soon

### Setup
You can download the page by clicking in the code green button and select Download ZIP or if you are a developer. You can get the https link or ssh link just copy it and use your favourite command line git interface and write this `git clone https://github.com/mohamed20163858/blog_project.git` if you use https or write `git clone git@github.com:mohamed20163858/blog_project.git` if you use ssh

### Usage

To run the project just open your terminal, then change the directory to the location of this repo using this command `cd file_path`, and finally run this command `gem install rails` then `rails s`.

### walkthrough application 
in this pull request I added an authentication roles for all users in the blog as following: - 
- admin users can read, create , destroy any post or comment in the blog 
- post or comment owner can destroy their own posts or comments only 
- default users can only read or create posts and comments 
this is done by adding role column in users table then install cancancan authenticaton gem 
finally here is a step by step guide to how test the blog functionalities 
1- intialize rails app by running these commands 
![image](https://user-images.githubusercontent.com/22921170/213010432-218be7d0-eaeb-4a6b-9dec-4963ab7a6172.png)
![image](https://user-images.githubusercontent.com/22921170/213011094-0acd01a3-fc9c-4991-8207-bea6b7da0a52.png)
2- navigate to blog home page  http://127.0.0.1:3000 it will redirect you to login page just click sign up in nav menu 
then fill the sign up form 
![image](https://user-images.githubusercontent.com/22921170/224332907-ef575b16-4695-47c2-a7c6-b75100c700b0.png)
![image](https://user-images.githubusercontent.com/22921170/224333073-5dfe7234-f248-49bd-919b-ee8edc8b2d21.png)
3-  
devise will send you confirmation mail including confirmation link and cause it is just in development you will see the mail inside the terminal you executed `rails s ` command and here is a screenshot of the mail 
![image](https://user-images.githubusercontent.com/22921170/213012786-d730ace5-1ae1-4264-93e1-9926237fb65a.png)
just copy the confirmation link and paste it in your browser tab 
it will redirect you to this page 
![image](https://user-images.githubusercontent.com/22921170/224338620-2f7d0bf0-160f-4a3a-a0f0-2b2333acbeed.png)
now click login and you will find yourself in this page 
![image](https://user-images.githubusercontent.com/22921170/213013223-604f90f7-29ed-4525-9c6b-b8f600a71db5.png)
4- now try to choose Tom and jump into his posts page you will notice you cannot see any button to delete his posts or comments 
![image](https://user-images.githubusercontent.com/22921170/224455095-324a3ec3-e893-4c96-9222-6954139910ae.png)
try to write any comment you will see you can see delete comment link click it and your comment will be deleted 
![image](https://user-images.githubusercontent.com/22921170/224455192-97ba4f9b-4f4f-4c1d-9959-fb02cae4fe36.png)
![image](https://user-images.githubusercontent.com/22921170/224455220-dbdbf28c-24ac-4eb4-b1dd-f92791ff98fc.png)
![image](https://user-images.githubusercontent.com/22921170/224455242-5352bbbc-db17-447e-942f-3deb4445f578.png)
5- return to users page using nav bar then choose yourself and create a post and some comments inside it 
![image](https://user-images.githubusercontent.com/22921170/224455451-0755e058-8199-4c82-962c-674707fabeb0.png)
![image](https://user-images.githubusercontent.com/22921170/224455536-033c9dfa-814d-4017-9d21-0f2c741802e9.png)
now try to delete one of your own comments then try to delete your post you notice it will direct you to users page 
![image](https://user-images.githubusercontent.com/22921170/224455630-f45f3215-5c03-413a-8872-dfba35fe793e.png)
![image](https://user-images.githubusercontent.com/22921170/224455642-b86c5f32-ce66-4d36-876a-ed422967879e.png)
![image](https://user-images.githubusercontent.com/22921170/224455650-fbe0ce22-58b2-4f4b-9f5e-bdf7eaaaa287.png)
![image](https://user-images.githubusercontent.com/22921170/224455684-c754c6e2-46c6-45dd-b59b-0b285be74338.png)
5- now try to make yourself an admin using `rails c` in your terminal 
![image](https://user-images.githubusercontent.com/22921170/224457821-dcf1da04-39a3-4a24-89ec-e9e82cf6eafa.png)now return back to users page and choose tom again and jump into his posts page you will able now to see delete buttons in both post and any existed comments
![image](https://user-images.githubusercontent.com/22921170/224457868-562f198a-014e-411e-8167-095b9eea82c2.png)
![image](https://user-images.githubusercontent.com/22921170/224457877-6397d588-8b0a-40a7-a500-383510ab07b4.png)
![image](https://user-images.githubusercontent.com/22921170/224457885-28882189-8a86-4180-9497-527bc6c918f3.png)
![image](https://user-images.githubusercontent.com/22921170/224457906-7c53dd4d-a8c1-44f5-8515-72e2ed9a6522.png)

Beside you can treat this app as API as well and here are some fetched information using Thunderclient visual studio extension 
![image](https://user-images.githubusercontent.com/88512874/225288675-3305b674-3306-4f85-b9c0-2603865a8ec7.png)
![image](https://user-images.githubusercontent.com/88512874/225288804-5bf960f4-38c2-46df-be51-a3687e2dbd6b.png)
![image](https://user-images.githubusercontent.com/88512874/225288886-acfb29d5-36be-41b3-8d79-ad025ea824e4.png)
![image](https://user-images.githubusercontent.com/88512874/225288969-b17e31d6-083f-495f-ba0d-96b136584246.png)
![image](https://user-images.githubusercontent.com/88512874/225289070-74e4538b-8279-46ff-8d16-4657b4e4d2fe.png)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Tests 
 in this project all tests are done using `Rspec` testing library this is done by including these libraries `rspec-rails` and `rails-controller-testing`  in the `Gemfile` under directory the root of this project 
 by including them under the group of development and testing like that : -
 ``` 
 group :development, :test do
  gem 'rails-controller-testing'
  gem 'rspec-rails'
end
``` 
after that you need to run this command `bundle install` using terminal but you need to make sure you are under into the project destination to make it work. 

To run All tests just run this command in your terminal after navigating to your project folder `bundle exec rspec` and if you just need to be more specific to test portion of files just write `bundle exec rspec ./spec/{folder_name}` to test certain files in a specific folder or `bundle exec rspec ./spec/{folder_name}/{file_name}` to test the a specific file in a specific folder.

After you run your tests you should see something like that 
![image](https://user-images.githubusercontent.com/22921170/222914801-a0dae8fc-bb51-41d8-9f45-96d3dc272006.png)


and here is a list of things that are being tested :- 
- users and posts controller tests that includes 
  - If response status was correct.
  - If correct template was rendered.
  - response body includes correct placeholder text. 
- user, post, like, comment model tests that includes
  - some fields are not blank like name and title fields 
  - some fields have limit number of chars like title fields 
  - some database fields must be integers and initialized by zero like posts_counter, like_counters, and comments_counters



<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Mohamed Saleh**

- GitHub: [@mohamed20163858](https://github.com/mohamed20163858)
- Twitter: [@mohamed20163858](https://twitter.com/mohamed20163858)
- LinkedIn: [MohamedMohsenSaleh](https://www.linkedin.com/in/mohamedmohsensaleh/)

👤 **Amen Tetteh**

- GitHub: [@amentetteh](https://github.com/amentetteh)
- Twitter: [@amentetteh](https://twitter.com/amentetteh)
- LinkedIn: [amentetteh](https://www.linkedin.com/in/amentetteh/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!--  Features -->
## 🔭 Future Features <a name="future-features"></a>

> Describe 1 - 3 features you will add to the project.

- add messanger box
- add some relationships between users like friends, followers,..etc.
- add some privacy control to each user 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>
I would like to thank rails community for their continous support and thank my partner [Amen](https://github.com/amentetteh) for his help  and support to build this awesome project

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project give it a thumb up :	👍 and share this projects with your friends 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->


<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./MIT.md) licensed.
<p align="right">(<a href="#readme-top">back to top</a>)</p>
