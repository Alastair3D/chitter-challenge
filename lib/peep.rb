require 'pg'

class Peep

  def all
    connect = PG.connect :dbname => 'chitter'
    results = connect.exec "SELECT * FROM peeps"
    result.map { |row| row['Peep'] }
  end


end
