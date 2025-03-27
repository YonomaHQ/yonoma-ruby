## [Yonoma](https://yonoma.io/) Ruby Email Marketing SDK

Welcome to the Yonoma Ruby SDK! This gem provides a simple and efficient way to integrate with the Yonoma Email Marketing API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'yonoma'
```

Then execute:

```sh
bundle install
```

Or install it yourself as:

```sh
gem install yonoma
```

## Configuration

To configure the SDK, initialize it with your API key:

```ruby
require 'yonoma'

Yonoma.api_key = 'api_key'
```

### Usage
#### Send your email:
```ruby
response_email = Yonoma::Email.send({
    "from_email":"updates@yonoma.io",
    "to_email":"email@yourdomain.com",
    "subject":"Welcome to Yonoma - You're In!",
    "mail_template": "We're excited to welcome you to Yonoma! Your successful signup marks the beginning of what we hope will be an exceptional journey."
})
puts response_email
```
### Managing Contacts

#### Create a Contact
```ruby
response_contact = Yonoma::Contacts.create("List Id", {
  "email" : "email@example.com",
  "status": "Subscribed" | "Unsubscribed"
  "firstName": string, //optional
  "lastName": string, //optional
  "phone": string, //optional
  "gender": string, //optional
  "address": string, //optional
  "city": string, //optional
  "state": string, //optional
  "country": string, //optional
  "zipcode": string, //optional
})
puts response_contact
```

#### Unsubscribe a Contact
```ruby
response_contact = Yonoma::Contacts.unsubscribe("List Id", "Contact Id", {
  "status" : "Subscribed" | "Unsubscribed"
})
puts response_contact
```

#### Add a Tag to a Contact
```ruby
response_add_tag = Yonoma::Contacts.addTag("Contact Id", {
  "tag_id" : "Tag Id"
})
puts response_add_tag
```

#### Remove a Tag from a Contact
```ruby
response_remove_tag = Yonoma::Contacts.removeTag("Contact Id", {
  "tag_id" : "Tag Id"
})
puts response_remove_tag
```

### Managing Tags

#### Create a Tag
```ruby
response_add_tag = Yonoma::Tags.create({
  "tag_name" : "Tag Name"
})
puts response_add_tag
```

#### Update a Tag
```ruby
response_update_tag = Yonoma::Tags.update("Tag Id", {
  "tag_name" : "Tag Name"
})
puts response_update_tag
```

#### Delete a Tag
```ruby
response_del_tag = Yonoma::Tags.delete("Tag Id")
puts response_del_tag
```

#### Retrieve a Specific Tag
```ruby
response_tags_retrieve = Yonoma::Tags.retrieve("Tag Id")
puts response_tags_retrieve
```

#### List All Tags
```ruby
response_tags = Yonoma::Tags.list()
puts response_tags
```

### Managing Lists

#### Create a List
```ruby
response_add_list = Yonoma::Lists.create({
  "list_name" : "List Name"
})
puts response_add_list
```

#### Update a List
```ruby
response_update_list = Yonoma::Lists.update("List Id", {
  "list_name" : "List Name"
})
puts response_update_list
```

#### Delete a List
```ruby
response_del_list = Yonoma::Lists.delete("List Id")
puts response_del_list
```

#### Retrieve a Specific List
```ruby
response_list_retrieve = Yonoma::Lists.retrieve("List Id")
puts response_list_retrieve
```

#### List All Lists
```ruby
response_list = Yonoma::Lists.list()
puts response_list
```
