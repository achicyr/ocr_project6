User.create!([
  {email: "hi.cyril@gmail.com", password: "bigcyri", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil}
  #{email: "hi.cyril@gmail.com", encrypted_password: "$2a$12$Xfph29VegirxHqNOx.cjbeTXTUCsw5.6ApkOf6WO3grANPohaLMHi", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil}
])
Activity.create!([
  {name: "Body building", description: "A collection of exercice scheduled for every days of the week form monday to friday."},
  {name: "Aerobic", description: "Aerobic activities make you breathe harder and make your heart and blood vessels healthier."},
  {name: "running", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis cum officia quidem saepe tempore consequatur odit architecto consequuntur, non tempora, voluptatum temporibus amet sed neque illum error velit quis rem!"},
  {name: "walking", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis cum officia quidem saepe tempore consequatur odit architecto consequuntur, non tempora, voluptatum temporibus amet sed neque illum error velit quis rem!"},
  {name: "cycling", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis cum officia quidem saepe tempore consequatur odit architecto consequuntur, non tempora, voluptatum temporibus amet sed neque illum error velit quis rem!"},
  {name: "swimming", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis cum officia quidem saepe tempore consequatur odit architecto consequuntur, non tempora, voluptatum temporibus amet sed neque illum error velit quis rem!"},
  {name: "circuit training", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis cum officia quidem saepe tempore consequatur odit architecto consequuntur, non tempora, voluptatum temporibus amet sed neque illum error velit quis rem!"},
  {name: "core strength", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis cum officia quidem saepe tempore consequatur odit architecto consequuntur, non tempora, voluptatum temporibus amet sed neque illum error velit quis rem!"},
  {name: "arc trainer", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis cum officia quidem saepe tempore consequatur odit architecto consequuntur, non tempora, voluptatum temporibus amet sed neque illum error velit quis rem!"},
  {name: "rowing", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis cum officia quidem saepe tempore consequatur odit architecto consequuntur, non tempora, voluptatum temporibus amet sed neque illum error velit quis rem!"},
  {name: "hiking", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis cum officia quidem saepe tempore consequatur odit architecto consequuntur, non tempora, voluptatum temporibus amet sed neque illum error velit quis rem!"},
  {name: "montain biking", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis cum officia quidem saepe tempore consequatur odit architecto consequuntur, non tempora, voluptatum temporibus amet sed neque illum error velit quis rem!"},
  {name: "wheelchair", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis cum officia quidem saepe tempore consequatur odit architecto consequuntur, non tempora, voluptatum temporibus amet sed neque illum error velit quis rem!"},
  {name: "snow-boarding", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis cum officia quidem saepe tempore consequatur odit architecto consequuntur, non tempora, voluptatum temporibus amet sed neque illum error velit quis rem!"},
  {name: "downhill skiing", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis cum officia quidem saepe tempore consequatur odit architecto consequuntur, non tempora, voluptatum temporibus amet sed neque illum error velit quis rem!"},
  {name: "XC skiing", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis cum officia quidem saepe tempore consequatur odit architecto consequuntur, non tempora, voluptatum temporibus amet sed neque illum error velit quis rem!"},
  {name: "nordic walking", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis cum officia quidem saepe tempore consequatur odit architecto consequuntur, non tempora, voluptatum temporibus amet sed neque illum error velit quis rem!"},
  {name: "skating", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis cum officia quidem saepe tempore consequatur odit architecto consequuntur, non tempora, voluptatum temporibus amet sed neque illum error velit quis rem!"},
  {name: "elliptical", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis cum officia quidem saepe tempore consequatur odit architecto consequuntur, non tempora, voluptatum temporibus amet sed neque illum error velit quis rem!"},
  {name: "strength training", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis cum officia quidem saepe tempore consequatur odit architecto consequuntur, non tempora, voluptatum temporibus amet sed neque illum error velit quis rem!"}
])
Content.create!([
  {component_type: "footer_partenars", title: "Aerosmic", content: nil, href: "somewhere.com", src: nil, json: nil},
  {component_type: "footer_partenars", title: "Youstrongify", content: nil, href: "somewhere.com", src: nil, json: nil},
  {component_type: "contacts", title: nil, content: nil, href: nil, src: nil, json: "[{k:'phone', v:'00641254522'},{k:'email',v:'contact@moveandgroove.com'}]"}
])
User::HABTM_Activities.create!([
  {activity_id: 18, user_id: 2},
  {activity_id: 14, user_id: 2}
])
Activity::HABTM_Users.create!([
  {activity_id: 18, user_id: 2},
  {activity_id: 14, user_id: 2}
])
