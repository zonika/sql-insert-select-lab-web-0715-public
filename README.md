---
tags: sql, insert, select, introductory, micro
languages: sql, ruby
resources: 
---

# Sql Insert and Select Lab

Now that you've learned how to insert and select data from a table, let's put that to use.

## Objectives

1. Learn to insert data into a table
2. Learn to write basic SELECT statements

## Todo

We're going to use the cats table we created in the last lab and insert some data into it. Then we'll write some SELECT statements.


## Inserting

Write your INSERT statements in the `lib/insert.sql` file.

This is the data I'm inserting into my cats table. Use this data in your INSERT statements. It will be the data you should will be querying in the SELECT specs as well.

|id |name|age|breed|gender|temperment|declawed|
|---|----|---|-----|------|----------|--------|
|1  |Maru| 6 |Scottish Fold|M|playful|0|
|2  |Nala| 3 |Siamese|F|diva|0|
|3  |Grumpy Cat|2|Ragdoll|F|friendly|1|
|4  |Lil Bub|3|Dwarf|F|friendly|1|

## Selecting

Get the tests in `spec/select_spec.rb` to pass. Note that for this section, the database will be seeded with the data listed above. Change the specs themselves to include your querying statements in place of the comments. The specs will look something like this:

```ruby
  it 'selects all the friendly cats and returns their names' do 
    sql = <<-SQL
    # write your sql statement here and delete this comment
    SQL
    expect(@db.execute(sql)).to eq([["Grumpy Cat"], ["Lil Bub"]])
  end
```
