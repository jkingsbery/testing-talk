.<div class="slide" style="">

# Second Step - Testing

## Before every commit, check...

* Test User Registration

* Test User login

* Test use case #3

* Test use case #4

  ....

* Test use case #35

.</div><div class="slide" style="">

# Second Step - Testing Software

```
make test
```

.</div><div class="slide" style="">

# Good test names

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

<img src="http://jenkins-ci.org/sites/default/files/jenkins_logo.png" class="scaled-centered">
<img src="http://docs.travis-ci.com/images/travis-mascot-200px.png" class="scaled-centered">
.</div>