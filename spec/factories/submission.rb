# frozen_string_literal: true
FactoryGirl.define do
  factory :submission do
    raw_content { submission_raw_content }
    ip_addr { Faker::Internet.ip_v4_address }
    entry_id { rand(5) + 1 }
    form_structure { submission_form_structure }
    field_structure { submission_field_structure }
    form_type 'screening'
    person
    form

    after(:build) do |submission, evaluator|
      submission.instance_variable_set(:@form_hash, evaluator.form.hash_id)
    end
  end
end

def submission_raw_content
  <<~HEREDOC
  {"FieldStructure":"{\"Fields\":[{\"Title\":\"Name\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"SubFields\":[{\"DefaultVal\":\"\",\"ID\":\"Field964\",\"Label\":\"First\"},{\"DefaultVal\":\"\",\"ID\":\"Field965\",\"Label\":\"Last\"}],\"Type\":\"shortname\",\"ID\":\"Field964\"},{\"Title\":\"Email\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Type\":\"email\",\"ID\":\"Field966\"},{\"Title\":\"Phone Number\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Type\":\"phone\",\"ID\":\"Field967\"},{\"Title\":\"Best contact method\",\"Instructions\":\"Check both boxes if you don't have a preference.\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"0\",\"Page\":\"1\",\"SubFields\":[{\"DefaultVal\":\"0\",\"ID\":\"Field1\",\"Label\":\"Email\"},{\"DefaultVal\":\"0\",\"ID\":\"Field2\",\"Label\":\"Phone\"}],\"Type\":\"checkbox\",\"ID\":\"Field1\"},{\"Title\":\"Gender\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"0\",\"Page\":\"1\",\"SubFields\":[{\"DefaultVal\":\"0\",\"ID\":\"Field540\",\"Label\":\"Female\"},{\"DefaultVal\":\"0\",\"ID\":\"Field541\",\"Label\":\"Male\"},{\"DefaultVal\":\"0\",\"ID\":\"Field542\",\"Label\":\"Transgender\"},{\"DefaultVal\":\"0\",\"ID\":\"Field543\",\"Label\":\"Other\"}],\"Type\":\"checkbox\",\"ID\":\"Field540\"},{\"Title\":\"Race or ethnic background\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"0\",\"Page\":\"1\",\"SubFields\":[{\"DefaultVal\":\"0\",\"ID\":\"Field646\",\"Label\":\"American Indian or Alaska Native\"},{\"DefaultVal\":\"0\",\"ID\":\"Field647\",\"Label\":\"Asian\"},{\"DefaultVal\":\"0\",\"ID\":\"Field648\",\"Label\":\"Black or African American\"},{\"DefaultVal\":\"0\",\"ID\":\"Field649\",\"Label\":\"Native Hawaiian or Other Pacific Islander\"},{\"DefaultVal\":\"0\",\"ID\":\"Field650\",\"Label\":\"White or Caucasian\"},{\"DefaultVal\":\"0\",\"ID\":\"Field651\",\"Label\":\"Hispanic or Latino\"},{\"DefaultVal\":\"0\",\"ID\":\"Field652\",\"Label\":\"Other\"}],\"Type\":\"checkbox\",\"ID\":\"Field646\"},{\"Title\":\"Age\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Choices\":[{\"Label\":\"18 - 24\"},{\"Label\":\"25 - 34\"},{\"Label\":\"35 - 44\"},{\"Label\":\"45 - 54\"},{\"Label\":\"55 - 64\"},{\"Label\":\"65 - 74\"},{\"Label\":\"75 or older\"}],\"Type\":\"radio\",\"ID\":\"Field972\",\"HasOtherField\":false},{\"Title\":\"Education\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Choices\":[{\"Label\":\"Some high school (no diploma)\"},{\"Label\":\"High school diploma or equivalent (for ex: GED)\"},{\"Label\":\"Associate\\u2019s degree \\/ trade certificate \\/ vocational training\"},{\"Label\":\"Some college (no degree)\"},{\"Label\":\"Bachelor's degree\"},{\"Label\":\"Master's degree\"},{\"Label\":\"Doctorate degree\"},{\"Label\":\"Other\"}],\"Type\":\"radio\",\"ID\":\"Field533\",\"HasOtherField\":true},{\"Title\":\"Employment status and profession\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Choices\":[{\"Label\":\"Unemployed\"},{\"Label\":\"Retired\"},{\"Label\":\"Employed, my profession is:\"}],\"Type\":\"radio\",\"ID\":\"Field857\",\"HasOtherField\":true},{\"Title\":\"Which part of the country do you live in?\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Choices\":[{\"Label\":\"Northeast \\/ Mid-Atlantic\"},{\"Label\":\"South\"},{\"Label\":\"West\"},{\"Label\":\"Midwest\"},{\"Label\":\"Alaska\"},{\"Label\":\"Hawaii\"}],\"Type\":\"radio\",\"ID\":\"Field853\",\"HasOtherField\":false},{\"Title\":\"Do you live in an urban, suburban, or rural area?\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Choices\":[{\"Label\":\"Urban\"},{\"Label\":\"Suburban\"},{\"Label\":\"Rural\"}],\"Type\":\"radio\",\"ID\":\"Field855\",\"HasOtherField\":false},{\"Title\":\"Are you a Veteran, Veteran's family member, or Veteran's caretaker?\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Choices\":[{\"Label\":\"Veteran\"},{\"Label\":\"Veteran's family member\"},{\"Label\":\"Veteran's caretaker\"}],\"Type\":\"radio\",\"ID\":\"Field749\",\"HasOtherField\":false},{\"Title\":\"Are you or have you ever been a VA employee or a Veteran Service Officer (VSO)?\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Choices\":[{\"Label\":\"Yes, current VA employee\"},{\"Label\":\"Yes, past VA employee\"},{\"Label\":\"Yes, current VSO\"},{\"Label\":\"Yes, past VSO\"},{\"Label\":\"No\"}],\"Type\":\"radio\",\"ID\":\"Field113\",\"HasOtherField\":false},{\"Title\":\"Are you comfortable looking at a website in English, and telling us your opinions in English?\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Choices\":[{\"Label\":\"Yes\"},{\"Label\":\"No, I prefer:\"}],\"Type\":\"radio\",\"ID\":\"Field751\",\"HasOtherField\":true},{\"Title\":\"How did you hear about the opportunity to participate in VA website research?\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Type\":\"text\",\"ID\":\"Field102\"},{\"Title\":\"Which branch of the military are\\/were you in?\",\"Instructions\":\"QUESTION - is this ok as MC, or should it be MS?\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Choices\":[{\"Label\":\"Air Force\"},{\"Label\":\"Army\"},{\"Label\":\"Coast Guard\"},{\"Label\":\"Marine Corps\"},{\"Label\":\"Navy\"}],\"Type\":\"radio\",\"ID\":\"Field104\",\"HasOtherField\":false},{\"Title\":\"Around which year did you join the service?\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"YYYY\",\"Page\":\"1\",\"Type\":\"number\",\"ID\":\"Field106\"},{\"Title\":\"Are you still active duty?\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Choices\":[{\"Label\":\"Yes\"},{\"Label\":\"No\"}],\"Type\":\"radio\",\"ID\":\"Field111\",\"HasOtherField\":false},{\"Title\":\"Around which year did you get out of the service?\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"YYYY\",\"Page\":\"1\",\"Type\":\"number\",\"ID\":\"Field107\"},{\"Title\":\"Anything else you'd like to share about your time serving?\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Type\":\"textarea\",\"ID\":\"Field109\"},{\"Title\":\"Which health-related VA benefits or services are you currently exploring, or have you used in the past?\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"0\",\"Page\":\"1\",\"SubFields\":[{\"DefaultVal\":\"0\",\"ID\":\"Field217\",\"Label\":\"None\"},{\"DefaultVal\":\"0\",\"ID\":\"Field218\",\"Label\":\"Dental Care\"},{\"DefaultVal\":\"0\",\"ID\":\"Field225\",\"Label\":\"Vision Care\"},{\"DefaultVal\":\"0\",\"ID\":\"Field226\",\"Label\":\"Mental Health Care\"},{\"DefaultVal\":\"0\",\"ID\":\"Field227\",\"Label\":\"Women's Health Care\"},{\"DefaultVal\":\"0\",\"ID\":\"Field230\",\"Label\":\"My HealtheVet\"},{\"DefaultVal\":\"0\",\"ID\":\"Field231\",\"Label\":\"eBenefits\"},{\"DefaultVal\":\"0\",\"ID\":\"Field233\",\"Label\":\"Secure messaging\"},{\"DefaultVal\":\"0\",\"ID\":\"Field234\",\"Label\":\"Online Rx Refill\"},{\"DefaultVal\":\"0\",\"ID\":\"Field235\",\"Label\":\"Downloading medical records\"},{\"DefaultVal\":\"0\",\"ID\":\"Field219\",\"Label\":\"Emergency Care\"},{\"DefaultVal\":\"0\",\"ID\":\"Field236\",\"Label\":\"Hospitals\"},{\"DefaultVal\":\"0\",\"ID\":\"Field237\",\"Label\":\"Primary Care\"},{\"DefaultVal\":\"0\",\"ID\":\"Field238\",\"Label\":\"Clinics\"},{\"DefaultVal\":\"0\",\"ID\":\"Field224\",\"Label\":\"Other\"}],\"Type\":\"checkbox\",\"ID\":\"Field217\"},{\"Title\":\"Which other VA benefits or services are you currently exploring, or have you used in the past?\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"0\",\"Page\":\"1\",\"SubFields\":[{\"DefaultVal\":\"0\",\"ID\":\"Field861\",\"Label\":\"None\"},{\"DefaultVal\":\"0\",\"ID\":\"Field871\",\"Label\":\"Education Benefits\"},{\"DefaultVal\":\"0\",\"ID\":\"Field862\",\"Label\":\"GI Bill\"},{\"DefaultVal\":\"0\",\"ID\":\"Field863\",\"Label\":\"Vocational Rehabilitation\"},{\"DefaultVal\":\"0\",\"ID\":\"Field864\",\"Label\":\"Career Services\"},{\"DefaultVal\":\"0\",\"ID\":\"Field865\",\"Label\":\"Housing Benefits\"},{\"DefaultVal\":\"0\",\"ID\":\"Field866\",\"Label\":\"Homelessness Services\"},{\"DefaultVal\":\"0\",\"ID\":\"Field867\",\"Label\":\"Disability Services\"},{\"DefaultVal\":\"0\",\"ID\":\"Field868\",\"Label\":\"Pension Services\"},{\"DefaultVal\":\"0\",\"ID\":\"Field869\",\"Label\":\"Insurance\"},{\"DefaultVal\":\"0\",\"ID\":\"Field872\",\"Label\":\"National Cemetery Association Services\"},{\"DefaultVal\":\"0\",\"ID\":\"Field870\",\"Label\":\"Other\"}],\"Type\":\"checkbox\",\"ID\":\"Field861\"},{\"Title\":\"How often do you use VA benefits and services?\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Choices\":[{\"Label\":\"Never\"},{\"Label\":\"About once a year\"},{\"Label\":\"About once a month\"},{\"Label\":\"About once a week\"},{\"Label\":\"Daily\"}],\"Type\":\"radio\",\"ID\":\"Field320\",\"HasOtherField\":false},{\"Title\":\"How often do you go online to access these VA benefits and services?\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Choices\":[{\"Label\":\"Never\"},{\"Label\":\"About once a year\"},{\"Label\":\"About once a month\"},{\"Label\":\"About once a week\"},{\"Label\":\"Daily\"}],\"Type\":\"radio\",\"ID\":\"Field322\",\"HasOtherField\":false},{\"Title\":\"How often do you go online in general?\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Choices\":[{\"Label\":\"Never\"},{\"Label\":\"About once a year\"},{\"Label\":\"About once a month\"},{\"Label\":\"About once a week\"},{\"Label\":\"Daily\"}],\"Type\":\"radio\",\"ID\":\"Field859\",\"HasOtherField\":false},{\"Title\":\"What kinds of activities do you do online?\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"0\",\"Page\":\"1\",\"SubFields\":[{\"DefaultVal\":\"0\",\"ID\":\"Field325\",\"Label\":\"I don't use the internet much \\/ at all\"},{\"DefaultVal\":\"0\",\"ID\":\"Field326\",\"Label\":\"Social Media\"},{\"DefaultVal\":\"0\",\"ID\":\"Field327\",\"Label\":\"Email\"},{\"DefaultVal\":\"0\",\"ID\":\"Field328\",\"Label\":\"Entertainment \\/ TV\"},{\"DefaultVal\":\"0\",\"ID\":\"Field329\",\"Label\":\"Research\"},{\"DefaultVal\":\"0\",\"ID\":\"Field330\",\"Label\":\"Banking\"},{\"DefaultVal\":\"0\",\"ID\":\"Field331\",\"Label\":\"Other\"}],\"Type\":\"checkbox\",\"ID\":\"Field325\"},{\"Title\":\"What device do you use the most to go online?\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Choices\":[{\"Label\":\"Cell phone\"},{\"Label\":\"Personal laptop computer\"},{\"Label\":\"Personal desktop computer\"},{\"Label\":\"Library or public computer\"},{\"Label\":\"Tablet\"},{\"Label\":\"Other\"}],\"Type\":\"radio\",\"ID\":\"Field970\",\"HasOtherField\":true},{\"Title\":\"What device do you use the second-most to go online?\",\"Instructions\":\"\",\"IsRequired\":\"0\",\"ClassNames\":\"\",\"DefaultVal\":\"\",\"Page\":\"1\",\"Choices\":[{\"Label\":\"Cell phone\"},{\"Label\":\"Personal laptop computer\"},{\"Label\":\"Personal desktop computer\"},{\"Label\":\"Library or public computer\"},{\"Label\":\"Tablet\"},{\"Label\":\"Other\"}],\"Type\":\"radio\",\"ID\":\"Field969\",\"HasOtherField\":true}]}","FormStructure":"{\"Name\":\"Vets.gov Participant Background Info\",\"Description\":\"Please enter some background information about yourself, so we can match you up with great feedback session opportunities.\",\"RedirectMessage\":\"Thanks! We'll be in touch when we have good feedback opportunities coming up.\",\"Url\":\"vetsgov-participant-background-info\",\"Email\":null,\"IsPublic\":\"1\",\"Language\":\"english\",\"StartDate\":\"2000-01-01 12:00:00\",\"EndDate\":\"2030-01-01 12:00:00\",\"EntryLimit\":\"0\",\"DateCreated\":\"2017-01-12 10:26:58\",\"DateUpdated\":\"2017-02-22 12:41:53\",\"Hash\":\"k12z8n2o1gmaduv\"}","Field964":"Nick","Field965":"Clyde","Field966":"nick@adhocteam.us","Field967":"5555555555","Field2":"Phone","Field541":"Male","Field650":"White or Caucasian","Field972":"18 - 24","Field533":"Bachelor's degree","Field857":"Software Engineer","Field853":"Northeast / Mid-Atlantic","Field855":"Urban","Field749":"Veteran's family member","Field113":"No","Field751":"Yes","Field102":"blah","Field104":"Marine Corps","Field106":"1985","Field111":"No","Field107":"2000","Field109":"blah blah","Field225":"Vision Care","Field234":"Online Rx Refill","Field235":"Downloading medical records","Field871":"Education Benefits","Field867":"Disability Services","Field868":"Pension Services","Field962":"","Field320":"About once a month","Field322":"About once a year","Field859":"Daily","Field326":"Social Media","Field327":"Email","Field328":"Entertainment / TV","Field330":"Banking","Field426":"","Field970":"Personal laptop computer","Field969":"Cell phone","Field1":"","Field540":"","Field542":"","Field543":"","Field646":"","Field647":"","Field648":"","Field649":"","Field651":"","Field652":"","Field217":"","Field218":"","Field226":"","Field227":"","Field230":"","Field231":"","Field233":"","Field219":"","Field236":"","Field237":"","Field238":"","Field224":"","Field861":"","Field862":"","Field863":"","Field864":"","Field865":"","Field866":"","Field869":"","Field872":"","Field870":"","Field325":"","Field329":"","Field331":"","CreatedBy":"public","DateCreated":"2017-02-24 13:37:24","EntryId":"12","IP":"73.163.21.106","HandshakeKey":"cohorts-wufoo-staging-submission","controller":"submissions","action":"create"}'
  HEREDOC
end

def submission_field_structure
  <<~HEREDOC
  {"Fields":[{"Title":"Name","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"","Page":"1","SubFields":[{"DefaultVal":"","ID":"Field964","Label":"First"},{"DefaultVal":"","ID":"Field965","Label":"Last"}],"Type":"shortname","ID":"Field964"},{"Title":"Email","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"","Page":"1","Type":"email","ID":"Field966"},{"Title":"Phone Number","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"","Page":"1","Type":"phone","ID":"Field967"},{"Title":"Best contact method","Instructions":"Check both boxes if you don't have a preference.","IsRequired":"0","ClassNames":"","DefaultVal":"0","Page":"1","SubFields":[{"DefaultVal":"0","ID":"Field1","Label":"Email"},{"DefaultVal":"0","ID":"Field2","Label":"Phone"}],"Type":"checkbox","ID":"Field1"},{"Title":"Gender","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"0","Page":"1","SubFields":[{"DefaultVal":"0","ID":"Field540","Label":"Female"},{"DefaultVal":"0","ID":"Field541","Label":"Male"},{"DefaultVal":"0","ID":"Field542","Label":"Transgender"},{"DefaultVal":"0","ID":"Field543","Label":"Other"}],"Type":"checkbox","ID":"Field540"},{"Title":"Race or ethnic background","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"0","Page":"1","SubFields":[{"DefaultVal":"0","ID":"Field646","Label":"American Indian or Alaska Native"},{"DefaultVal":"0","ID":"Field647","Label":"Asian"},{"DefaultVal":"0","ID":"Field648","Label":"Black or African American"},{"DefaultVal":"0","ID":"Field649","Label":"Native Hawaiian or Other Pacific Islander"},{"DefaultVal":"0","ID":"Field650","Label":"White or Caucasian"},{"DefaultVal":"0","ID":"Field651","Label":"Hispanic or Latino"},{"DefaultVal":"0","ID":"Field652","Label":"Other"}],"Type":"checkbox","ID":"Field646"},{"Title":"Age","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"","Page":"1","Choices":[{"Label":"18 - 24"},{"Label":"25 - 34"},{"Label":"35 - 44"},{"Label":"45 - 54"},{"Label":"55 - 64"},{"Label":"65 - 74"},{"Label":"75 or older"}],"Type":"radio","ID":"Field972","HasOtherField":false},{"Title":"Education","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"","Page":"1","Choices":[{"Label":"Some high school (no diploma)"},{"Label":"High school diploma or equivalent (for ex: GED)"},{"Label":"Associate\u2019s degree \/ trade certificate \/ vocational training"},{"Label":"Some college (no degree)"},{"Label":"Bachelor's degree"},{"Label":"Master's degree"},{"Label":"Doctorate degree"},{"Label":"Other"}],"Type":"radio","ID":"Field533","HasOtherField":true},{"Title":"Employment status and profession","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"","Page":"1","Choices":[{"Label":"Unemployed"},{"Label":"Retired"},{"Label":"Employed, my profession is:"}],"Type":"radio","ID":"Field857","HasOtherField":true},{"Title":"Which part of the country do you live in?","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"","Page":"1","Choices":[{"Label":"Northeast \/ Mid-Atlantic"},{"Label":"South"},{"Label":"West"},{"Label":"Midwest"},{"Label":"Alaska"},{"Label":"Hawaii"}],"Type":"radio","ID":"Field853","HasOtherField":false},{"Title":"Do you live in an urban, suburban, or rural area?","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"","Page":"1","Choices":[{"Label":"Urban"},{"Label":"Suburban"},{"Label":"Rural"}],"Type":"radio","ID":"Field855","HasOtherField":false},{"Title":"Are you a Veteran, Veteran's family member, or Veteran's caretaker?","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"","Page":"1","Choices":[{"Label":"Veteran"},{"Label":"Veteran's family member"},{"Label":"Veteran's caretaker"}],"Type":"radio","ID":"Field749","HasOtherField":false},{"Title":"Are you or have you ever been a VA employee or a Veteran Service Officer (VSO)?","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"","Page":"1","Choices":[{"Label":"Yes, current VA employee"},{"Label":"Yes, past VA employee"},{"Label":"Yes, current VSO"},{"Label":"Yes, past VSO"},{"Label":"No"}],"Type":"radio","ID":"Field113","HasOtherField":false},{"Title":"Are you comfortable looking at a website in English, and telling us your opinions in English?","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"","Page":"1","Choices":[{"Label":"Yes"},{"Label":"No, I prefer:"}],"Type":"radio","ID":"Field751","HasOtherField":true},{"Title":"How did you hear about the opportunity to participate in VA website research?","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"","Page":"1","Type":"text","ID":"Field102"},{"Title":"Which branch of the military are\/were you in?","Instructions":"QUESTION - is this ok as MC, or should it be MS?","IsRequired":"0","ClassNames":"","DefaultVal":"","Page":"1","Choices":[{"Label":"Air Force"},{"Label":"Army"},{"Label":"Coast Guard"},{"Label":"Marine Corps"},{"Label":"Navy"}],"Type":"radio","ID":"Field104","HasOtherField":false},{"Title":"Around which year did you join the service?","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"YYYY","Page":"1","Type":"number","ID":"Field106"},{"Title":"Are you still active duty?","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"","Page":"1","Choices":[{"Label":"Yes"},{"Label":"No"}],"Type":"radio","ID":"Field111","HasOtherField":false},{"Title":"Around which year did you get out of the service?","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"YYYY","Page":"1","Type":"number","ID":"Field107"},{"Title":"Anything else you'd like to share about your time serving?","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"","Page":"1","Type":"textarea","ID":"Field109"},{"Title":"Which health-related VA benefits or services are you currently exploring, or have you used in the past?","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"0","Page":"1","SubFields":[{"DefaultVal":"0","ID":"Field217","Label":"None"},{"DefaultVal":"0","ID":"Field218","Label":"Dental Care"},{"DefaultVal":"0","ID":"Field225","Label":"Vision Care"},{"DefaultVal":"0","ID":"Field226","Label":"Mental Health Care"},{"DefaultVal":"0","ID":"Field227","Label":"Women's Health Care"},{"DefaultVal":"0","ID":"Field230","Label":"My HealtheVet"},{"DefaultVal":"0","ID":"Field231","Label":"eBenefits"},{"DefaultVal":"0","ID":"Field233","Label":"Secure messaging"},{"DefaultVal":"0","ID":"Field234","Label":"Online Rx Refill"},{"DefaultVal":"0","ID":"Field235","Label":"Downloading medical records"},{"DefaultVal":"0","ID":"Field219","Label":"Emergency Care"},{"DefaultVal":"0","ID":"Field236","Label":"Hospitals"},{"DefaultVal":"0","ID":"Field237","Label":"Primary Care"},{"DefaultVal":"0","ID":"Field238","Label":"Clinics"},{"DefaultVal":"0","ID":"Field224","Label":"Other"}],"Type":"checkbox","ID":"Field217"},{"Title":"Which other VA benefits or services are you currently exploring, or have you used in the past?","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"0","Page":"1","SubFields":[{"DefaultVal":"0","ID":"Field861","Label":"None"},{"DefaultVal":"0","ID":"Field871","Label":"Education Benefits"},{"DefaultVal":"0","ID":"Field862","Label":"GI Bill"},{"DefaultVal":"0","ID":"Field863","Label":"Vocational Rehabilitation"},{"DefaultVal":"0","ID":"Field864","Label":"Career Services"},{"DefaultVal":"0","ID":"Field865","Label":"Housing Benefits"},{"DefaultVal":"0","ID":"Field866","Label":"Homelessness Services"},{"DefaultVal":"0","ID":"Field867","Label":"Disability Services"},{"DefaultVal":"0","ID":"Field868","Label":"Pension Services"},{"DefaultVal":"0","ID":"Field869","Label":"Insurance"},{"DefaultVal":"0","ID":"Field872","Label":"National Cemetery Association Services"},{"DefaultVal":"0","ID":"Field870","Label":"Other"}],"Type":"checkbox","ID":"Field861"},{"Title":"How often do you use VA benefits and services?","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"","Page":"1","Choices":[{"Label":"Never"},{"Label":"About once a year"},{"Label":"About once a month"},{"Label":"About once a week"},{"Label":"Daily"}],"Type":"radio","ID":"Field320","HasOtherField":false},{"Title":"How often do you go online to access these VA benefits and services?","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"","Page":"1","Choices":[{"Label":"Never"},{"Label":"About once a year"},{"Label":"About once a month"},{"Label":"About once a week"},{"Label":"Daily"}],"Type":"radio","ID":"Field322","HasOtherField":false},{"Title":"How often do you go online in general?","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"","Page":"1","Choices":[{"Label":"Never"},{"Label":"About once a year"},{"Label":"About once a month"},{"Label":"About once a week"},{"Label":"Daily"}],"Type":"radio","ID":"Field859","HasOtherField":false},{"Title":"What kinds of activities do you do online?","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"0","Page":"1","SubFields":[{"DefaultVal":"0","ID":"Field325","Label":"I don't use the internet much \/ at all"},{"DefaultVal":"0","ID":"Field326","Label":"Social Media"},{"DefaultVal":"0","ID":"Field327","Label":"Email"},{"DefaultVal":"0","ID":"Field328","Label":"Entertainment \/ TV"},{"DefaultVal":"0","ID":"Field329","Label":"Research"},{"DefaultVal":"0","ID":"Field330","Label":"Banking"},{"DefaultVal":"0","ID":"Field331","Label":"Other"}],"Type":"checkbox","ID":"Field325"},{"Title":"What device do you use the most to go online?","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"","Page":"1","Choices":[{"Label":"Cell phone"},{"Label":"Personal laptop computer"},{"Label":"Personal desktop computer"},{"Label":"Library or public computer"},{"Label":"Tablet"},{"Label":"Other"}],"Type":"radio","ID":"Field970","HasOtherField":true},{"Title":"What device do you use the second-most to go online?","Instructions":"","IsRequired":"0","ClassNames":"","DefaultVal":"","Page":"1","Choices":[{"Label":"Cell phone"},{"Label":"Personal laptop computer"},{"Label":"Personal desktop computer"},{"Label":"Library or public computer"},{"Label":"Tablet"},{"Label":"Other"}],"Type":"radio","ID":"Field969","HasOtherField":true}]}
  HEREDOC
end

def submission_form_structure
  <<~HEREDOC
  {"Name":"Vets.gov Participant Background Info","Description":"Please enter some background information about yourself, so we can match you up with great feedback session opportunities.","RedirectMessage":"Thanks! We'll be in touch when we have good feedback opportunities coming up.","Url":"vetsgov-participant-background-info","Email":null,"IsPublic":"1","Language":"english","StartDate":"2000-01-01 12:00:00","EndDate":"2030-01-01 12:00:00","EntryLimit":"0","DateCreated":"2017-01-12 10:26:58","DateUpdated":"2017-02-22 12:41:53","Hash":"z15g6mjw0nvi2vu"}
  HEREDOC
end