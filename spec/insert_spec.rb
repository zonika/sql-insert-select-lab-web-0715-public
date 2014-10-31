describe "Inserting data" do
  before do
    @db = SQLite3::Database.new(':memory:')
    SQLRunner.make_methods
    @sql_runner = SQLRunner.new(@db)
    @sql_runner.execute_sql_create
    @sql_runner.execute_sql_insert
  end

  it 'has 4 cats' do 
    expect(@db.execute("SELECT COUNT(*) FROM cats;").flatten[0]).to eq(4)
  end
end