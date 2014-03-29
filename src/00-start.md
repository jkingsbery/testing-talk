.<div class="slide">

# Testing and Deploying Web Software

## Automated Testing and Continuous Deployment

### James Kingsbery

#### <http://kingsbery.net/>

.</div><div class="slide" style="">

## How is Industry different than school?

.</div><div class="slide" style="">

# My Background

  * Macros in VBA
  
  * Start ups - Java

  * Data Science at Yodle

  * Erlang and Node.js at Dow Jones

.</div><div class="slide" style="">

# First Step - Running Locally

```bash
git clone https://github.mycompany.com/our_project
cd our_project
cp ~/Downloads/some.properties etc/
cp ~/Downloads/other.properties etc/
emacs etc/some.properties
...
./run.sh
```
.</div><div class="slide" style="">

# First Step - Running Software

```bash
git clone ...
rails server
```

```bash
git clone ... 
./run.sh
```

.</div><div class="slide" style="">

# Second Step - Testing

Before every commit, check...

* Test User Registration

* Test User login

* Test use case #3

* Test use case #4

  ....

* Teset use case #35

.</div><div class="slide" style="">

# Second Step - Testing Software

```
make test
```

.</div><div class="slide" style="">

# Getting to the second step

## Good test names

```java

@Test
public void userTest(){
    User user = new User();
    user.email = "...";
    user.password = "...";
    user.firstName = "...";
    user.lastName = "...";
    RegistrationService rs = new RegistrationService();
    rs.register(user);
}

```

.</div><div class="slide" style="">

# Good test names

```java

@Test
public void if_all_info_provided_registration_should_succeed(){
    User user = new User();
    user.email = "...";
    user.password = "...";
    user.firstName = "...";
    user.lastName = "...";
    RegistrationService rs = new RegistrationService();
    assert.equals(Status.OK,rs.register(user));
}

```

.</div><div class="slide" style="">

#  Use Mocks for complicated things

```java
@Test
public void if_string_is_valid_should_add_to_image(){
    Rectangle bounds=new Rectangle(0, 0, 640,480);
    Graphics graphics = mock(Graphics.class);
    String validString = "Not too long.";
    
    ImageDrawer drawer = new ImageDrawer();
    drawer.paint(graphics, bounds, graphics);

    verify(graphics).drawChars(validString, bounds);
}
```
.</div><div class="slide" style="">

# System should have seems
```ruby
class UserDao
  def initialize()
    @@db = Database.new
  end
  def fetch_by_id(id)
    @@db.run_query("select * from user where id = " + id)
  end
end

dao = UserDao.new
dao.fetch_by_id("42")
```

.</div><div class="slide" style="">

# System should have seems

```ruby
class UserDao
  def initialize(db)
    @@db = db
  end
  def fetch_by_id(id)
    @@db.run_query("select * from user where id = " + id)
  end
end

dao = UserDao.new(Database.new)
dao.fetch_by_id("42")
```
.</div><div class="slide" style="">

# Other things to make testing easier

* Keep tests small and focused

* Add test when you find a bug

* Unit tests vs System/Integration tests

* Key measures - time, code coverage, code complexity

* Diminishing returns getting to 100%

.</div><div class="slide" style="">

# Continuous Integration Servers

TODO

.</div><div class="slide" style="">

# Third Step - Deploying

From your machine:

```bash
make all
scp bin/* qa.mycompany.net:/opt/bin/
mysql < database-changes.sql

```
.</div><div class="slide" style="">

# Third Step - Deploying

From clean machine:

```
make all
./deploy.sh qa
```
.</div><div class="slide" style="">

# Third Step - Deploying

## Two Approaches

* Deployments are hard - do less frequently and more carefully

* Deployments are hard - do more frequently, automated

.</div><div class="slide" style="">

# Third Step - Deploying

## Required components

* Automate start, stop

* Configuration changes

* Database changes (even NoSQL)

* Deploying front end

* Dealing with live users

* Rollback strategy

.</div><div class="slide" style="">

# Source Control

* Everything goes through source control

* Exception: System state that gets backed up

* Other Exception: System dependencies

.</div><div class="slide" style="">

## Separate "What" and "How"

.</div>