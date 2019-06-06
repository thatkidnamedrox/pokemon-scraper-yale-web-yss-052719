class Pokemon

  attr_accessor :id, :name, :type, :db

  def initialize(attributes)
    attributes.each {|key, value| self.send("#{key}=", value)}
  end

  def self.save(name, type, db)
    sql = <<-SQL
    INSERT INTO pokemon(name, type)
    VALUES(?,?)
    SQL
    db.execute(sql, name, type)
  end


end
