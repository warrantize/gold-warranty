  rails generate devise:install


rails g model company name address phone url description:text

rails g model client name address phone

rails g model product company:references

rails g model ticket client:references product:references

rails g model message content:text ticket:references image


rails g controller


rails g controller ticket index show new create edit update destroy

rails g controller product index show new create edit update destroy

rails g controller company index show new create edit update destroy

rails g controller message index new create






