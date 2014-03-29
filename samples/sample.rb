

class Database
  def run_query(query)
    print "Query!\n"
  end
end

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
